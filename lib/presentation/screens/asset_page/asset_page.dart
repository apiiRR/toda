import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../bloc/asset/asset_bloc.dart';
import '../../../domain/models/asset_model/datum.dart';
import '../../router/app_route.dart';
import '../../utils/app_styles.dart';
import '../../widgets/app_dialog.dart';

class AssetPage extends StatefulWidget {
  const AssetPage({super.key});

  @override
  State<AssetPage> createState() => _AssetPageState();
}

class _AssetPageState extends State<AssetPage> {
  @override
  void initState() {
    context.read<AssetBloc>().add(AssetEvent.getData(0, {"name": searchValue}));

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _loadMoreData();
      }
    });
    super.initState();
  }

  Future<void> refresh() async {
    setState(() {
      searchValue = "";
      data = null;
      dataResult = null;
      isSearch = false;
      isFull = false;
    });

    context.read<AssetBloc>().add(const AssetEvent.getData(0, {}));
  }

  Future<void> _loadMoreData() async {
    if (data != null) {
      if (!_isLoading) {
        setState(() {
          _isLoading = true;
        });

        context.read<AssetBloc>().add(
          AssetEvent.getData(data!.length, {"name": searchValue}),
        );
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  List<Datum>? data;
  List<Datum>? dataResult;
  String searchValue = "";
  bool isSelect = false;
  List<Datum> dataPicked = [];
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;
  bool isSearch = false;
  bool isFull = false;

  void search(String text) {
    setState(() {
      searchValue = text;
      data = null;
      dataResult = null;
      isSearch = true;
      isFull = false;
    });

    context.read<AssetBloc>().add(AssetEvent.getData(0, {"name": searchValue}));
  }

  int countDuplicate() {
    return dataResult != null
        ? dataResult!
            .where(
              (item) => item.productName!.toLowerCase().contains("duplicate"),
            )
            .length
        : 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithSearchSwitch(
        backgroundColor: kStroke,
        onCleared: () {
          setState(() {
            searchValue = "";
            data = null;
            dataResult = null;
            isSearch = false;
            isFull = false;
          });

          refresh();
        },
        onSubmitted: (text) {
          search(text);
        }, // onSubmitted: (text) => searchText.value = text,
        appBarBuilder: (context) {
          return AppBar(
            backgroundColor: kPrimary,
            automaticallyImplyLeading: false,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded, color: kWhite),
            ),
            centerTitle: true,
            title: Text(
              "Asset",
              style: kJakartaRegular.copyWith(color: kWhite),
            ),
            actions: [
              IconButton(
                onPressed: AppBarWithSearchSwitch.of(context)?.startSearch,
                icon: Icon(Icons.search, color: kWhite),
              ),
              IconButton(
                onPressed: () {
                  context.pushNamed(RouteName.assetInputPage).then((value) {
                    if (value == true) {
                      refresh();
                    }
                  });
                },
                icon: Icon(Icons.add, color: kWhite),
              ),
            ],
          );
        },
      ),

      body: BlocConsumer<AssetBloc, AssetState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            error: (errorMessage) {
              showAppDialog(
                context,
                type: DialogType.error,
                message: errorMessage,
              );
            },
            successWithData: (data) {
              final List<Datum> tempData = List.from(data.result?.data as List);
              if (tempData.isNotEmpty) {
                tempData.sort((a, b) => b.id!.compareTo(a.id!));
              }

              if (tempData.isEmpty) {
                setState(() {
                  isFull = true;
                });
              }

              if (tempData.length < 20) {
                setState(() {
                  isFull = true;
                });
              }

              if (this.data == null) {
                this.data = tempData;
                dataResult = this.data;
              } else {
                this.data!.addAll(tempData);
                dataResult!.addAll(tempData);
              }

              _isLoading = false;
            },

            // success: (message) {
            //   CoolAlert.show(
            //     context: context,
            //     type: CoolAlertType.success,
            //     text: message,
            //     titleTextStyle: kJakartaBold,
            //     textTextStyle: kJakartaRegular,
            //     confirmBtnTextStyle: kJakartaRegular.copyWith(color: kWhite),
            //     confirmBtnColor: Colors.green,
            //     onConfirmBtnTap: () {
            //       refresh();
            //     },
            //   );
            // },
          );
        },
        builder: (context, state) {
          return state == const AssetState.loading() && data == null
              ? Center(child: CircularProgressIndicator(color: kPrimary))
              : dataResult == null || dataResult!.isEmpty
              ? Center(child: Text("Data is empty", style: kJakartaRegular))
              : RefreshIndicator(
                onRefresh: refresh,
                child: SingleChildScrollView(
                  controller: _scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (isSearch == true)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 16),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  text: "Hasil pencarian dengan kata kunci : ",
                                  style: kJakartaRegular.copyWith(
                                    fontSize: 16,
                                    color: kBlack,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: searchValue,
                                      style: kJakartaSemibold.copyWith(
                                        fontSize: 16,
                                        color: kBlack,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          top: 12,
                        ),
                        shrinkWrap: true,
                        itemCount: dataResult!.length + 1,
                        itemBuilder: (context, index) {
                          if (index == dataResult!.length && isFull == false) {
                            return Center(
                              child: Container(
                                margin: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 50,
                                ),
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  color: kPrimary,
                                ),
                              ),
                            );
                          } else if (index == dataResult!.length &&
                              isFull == true) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(height: 10),
                                Text(
                                  "Data Sudah Tampil Semua",
                                  style: kJakartaRegular,
                                ),
                                const SizedBox(height: 30),
                              ],
                            );
                          }

                          return InkWell(
                            // onLongPress: () {
                            //   showModalBottomSheet(
                            //     context: context,
                            //     builder: (context) {
                            //       return Column(
                            //         mainAxisSize: MainAxisSize.min,
                            //         children: <Widget>[
                            //           ListTile(
                            //             leading: const Icon(
                            //               Icons.control_point_duplicate_rounded,
                            //             ),
                            //             title: Text(
                            //               'Duplicate',
                            //               style: kJakartaRegular,
                            //             ),
                            //             onTap: () async {
                            //               String image = "";
                            //               if (dataResult![index].imageUrl !=
                            //                   "") {
                            //                 String imageConverter =
                            //                     await downloadImageAndConvertToBase64(
                            //                       dataResult![index].imageUrl!,
                            //                     );
                            //                 image = imageConverter;

                            //                 Map<String, dynamic> inputData = {
                            //                   "product_name":
                            //                       "${dataResult![index].productName.toString()} Duplicate${countDuplicate() == 0 ? "" : countDuplicate()}",
                            //                   "product_code":
                            //                       "${dataResult![index].productCode.toString()} Duplicate${countDuplicate() == 0 ? "" : countDuplicate()}",
                            //                   "user_name":
                            //                       dataResult![index].userName
                            //                           .toString(),
                            //                   "notes":
                            //                       dataResult![index].notes
                            //                           .toString(),
                            //                   "image": image,
                            //                 };

                            //                 context.read<AssetBloc>().add(
                            //                   AssetEvent.postDataDuplicate(
                            //                     inputData,
                            //                   ),
                            //                 );
                            //               } else {
                            //                 Map<String, dynamic> inputData = {
                            //                   "product_name":
                            //                       "${dataResult![index].productName.toString()} Duplicate${countDuplicate() == 0 ? "" : countDuplicate()}",
                            //                   "product_code":
                            //                       "${dataResult![index].productCode.toString()} Duplicate${countDuplicate() == 0 ? "" : countDuplicate()}",
                            //                   "user_name":
                            //                       dataResult![index].userName
                            //                           .toString(),
                            //                   "notes":
                            //                       dataResult![index].notes
                            //                           .toString(),
                            //                 };

                            //                 context.read<AssetBloc>().add(
                            //                   AssetEvent.postDataDuplicate(
                            //                     inputData,
                            //                   ),
                            //                 );
                            //               }

                            //               context.pop();
                            //             },
                            //           ),
                            //           ListTile(
                            //             leading: const Icon(Icons.delete),
                            //             title: Text(
                            //               'Delete',
                            //               style: kJakartaRegular,
                            //             ),
                            //             onTap: () {
                            //               context.read<AssetBloc>().add(
                            //                 AssetEvent.deleteData(
                            //                   dataResult![index].id!,
                            //                 ),
                            //               );
                            //               context.pop();
                            //             },
                            //           ),
                            //         ],
                            //       );
                            //     },
                            //   );
                            // },
                            onTap: () {
                              if (isSelect == true) {
                                setState(() {
                                  dataPicked.add(dataResult![index]);
                                });
                              } else {
                                context
                                    .pushNamed(
                                      RouteName.assetDetailPage,
                                      extra: [
                                        dataResult![index],
                                        true,
                                        "0",
                                        countDuplicate(),
                                      ],
                                    )
                                    .then((value) {
                                      if (value == true) {
                                        refresh();
                                      }
                                    });
                              }
                            },
                            child: Card(
                              color: kWhite,
                              margin: const EdgeInsets.only(bottom: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                side:
                                    isSelect == true &&
                                            dataPicked.contains(
                                              dataResult![index],
                                            )
                                        ? const BorderSide(
                                          color: Colors.green,
                                          width: 2,
                                        )
                                        : const BorderSide(
                                          color: Color.fromARGB(
                                            255,
                                            149,
                                            187,
                                            252,
                                          ),
                                        ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      dataResult![index].productCode!,
                                      style: kJakartaBold,
                                    ),
                                    const Divider(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                dataResult![index].productName!,
                                                style: kJakartaRegular,
                                              ),
                                              const SizedBox(height: 10),
                                              Text(
                                                dataResult![index]
                                                            .locationName! ==
                                                        "false"
                                                    ? "Location has not been added"
                                                    : dataResult![index]
                                                        .locationName!,
                                                style: kJakartaRegular.copyWith(
                                                  color:
                                                      dataResult![index]
                                                                  .locationName! ==
                                                              "false"
                                                          ? kGrey
                                                          : kPrimary,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: BarcodeWidget(
                                                data:
                                                    dataResult![index]
                                                        .productCode!,
                                                barcode: Barcode.qrCode(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              );
        },
      ),
    );
  }
}
