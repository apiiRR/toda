import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../bloc/asset/asset_bloc.dart';
import '../../../bloc/location/location_bloc.dart';
import '../../../domain/models/location_model/datum.dart' as datum_location;
import '../../../domain/models/asset_model/datum.dart' as datum_asset;
import '../../router/app_route.dart';
import '../../utils/app_styles.dart';
import '../../widgets/app_dialog.dart';
import '../../widgets/text_field_title.dart';

class LocationDetailPage extends StatefulWidget {
  const LocationDetailPage({super.key, required this.data});
  final datum_location.Datum data;

  @override
  State<LocationDetailPage> createState() => _LocationDetailPageState();
}

class _LocationDetailPageState extends State<LocationDetailPage> {
  Future<void> refresh() async {
    context.read<LocationBloc>().add(
      LocationEvent.getDataSingle(widget.data.id!),
    );
  }

  @override
  void initState() {
    dataLocation = widget.data;
    context.read<AssetBloc>().add(
      AssetEvent.customData({"location": dataLocation.code}),
    );
    super.initState();
  }

  List<datum_asset.Datum>? data = [];
  List<datum_asset.Datum>? dataResult = [];
  late datum_location.Datum dataLocation;
  String searchValue = "";

  void search(String text) {
    if (data != null && data!.isNotEmpty) {
      setState(() {
        dataResult =
            data!.where((value) {
              return value.productCode!.toLowerCase().contains(
                    text.toLowerCase(),
                  ) ||
                  value.productName!.toLowerCase().contains(text.toLowerCase());
            }).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithSearchSwitch(
        backgroundColor: kStroke,
        onCleared: () {
          setState(() {
            searchValue = "";
            dataResult = data;
          });
        },
        onChanged: (text) {
          search(text);
        }, // onSubmitted: (text) => searchText.value = text,
        appBarBuilder: (context) {
          return AppBar(
            backgroundColor: kPrimary,
            automaticallyImplyLeading: false,
            leading: IconButton(
              onPressed: () {
                context.pop(true);
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded, color: kWhite),
            ),
            centerTitle: true,
            title: Text(
              "Location",
              style: kJakartaRegular.copyWith(color: kWhite),
            ),
            actions: [
              IconButton(
                onPressed: AppBarWithSearchSwitch.of(context)?.startSearch,
                icon: Icon(Icons.search, color: kWhite),
              ),
              PopupMenuButton<String>(
                icon: Icon(Icons.more_vert_sharp, color: kWhite),
                itemBuilder:
                    (BuildContext context) => <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        child: const ListTile(
                          leading: Icon(Icons.edit),
                          title: Text('Edit'),
                        ),
                        onTap: () {
                          context
                              .pushNamed(
                                RouteName.locationEditPage,
                                extra: dataLocation,
                              )
                              .then((value) => refresh());
                        },
                      ),
                      PopupMenuItem<String>(
                        child: const ListTile(
                          leading: Icon(Icons.delete),
                          title: Text('Delete'),
                        ),
                        onTap: () {
                          context.read<LocationBloc>().add(
                            LocationEvent.deleteData(dataLocation.id!),
                          );
                        },
                      ),
                    ],
              ),
            ],
          );
        },
      ),
      // appBar: AppBar(
      //   leading: IconButton(
      //       onPressed: () {
      //         context.read<LocationBloc>().add(const LocationEvent.getData());
      //         Navigator.pop(context);
      //       },
      //       icon: Icon(
      //         Icons.arrow_back_ios_new_rounded,
      //         color: kWhite,
      //       )),
      //   backgroundColor: kPrimary,
      //   title: Text(
      //     "Location Details",
      //     style: kJakartaRegular.copyWith(color: kWhite),
      //   ),
      //   actions: [
      //     PopupMenuButton<String>(
      //       icon: Icon(
      //         Icons.more_vert_sharp,
      //         color: kWhite,
      //       ),
      //       itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
      //         PopupMenuItem<String>(
      //           child: const ListTile(
      //             leading: Icon(Icons.edit),
      //             title: Text('Edit'),
      //           ),
      //           onTap: () {
      //             context
      //                 .pushNamed(RouteName.locationEditPage,
      //                     extra: dataLocation)
      //                 .then((value) => refresh());
      //           },
      //         ),
      //         PopupMenuItem<String>(
      //           child: const ListTile(
      //             leading: Icon(Icons.delete),
      //             title: Text('Delete'),
      //           ),
      //           onTap: () {
      //             context
      //                 .read<LocationBloc>()
      //                 .add(LocationEvent.deleteData(dataLocation.id!));
      //           },
      //         ),
      //       ],
      //     )
      //   ],
      //   centerTitle: true,
      // ),
      body: BlocConsumer<LocationBloc, LocationState>(
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
              setState(() {
                dataLocation = data.result!.data!.first;
              });
            },
            success: (message) {
              showAppDialog(
                context,
                type: DialogType.success,
                message: message,
                onConfirm: () {
                  context.pop(true);
                },
              );
            },
          );
        },
        builder: (context, state) {
          return state == const LocationState.loading()
              ? Center(child: CircularProgressIndicator(color: kWhite))
              : SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Data Location",
                        style: kJakartaSemibold.copyWith(fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SizedBox(
                        width: 100.w,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color: kGrey, width: 2),
                          ),
                          surfaceTintColor: kWhite,
                          shadowColor: kWhite,
                          color: kWhite,
                          margin: EdgeInsets.zero,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFieldTitle(
                                  title: "Room Code",
                                  text: dataLocation.code!,
                                ),
                                const Divider(),
                                TextFieldTitle(
                                  title: "Room Name",
                                  text: dataLocation.name!,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    BlocConsumer<AssetBloc, AssetState>(
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
                            this.data = data.result?.data;
                            final List<datum_asset.Datum> tempData = List.from(
                              this.data!,
                            );
                            this.data = tempData;
                            if (this.data != null && this.data!.isNotEmpty) {
                              this.data!.sort((a, b) => b.id!.compareTo(a.id!));
                            }
                            dataResult = this.data;
                          },
                        );
                      },
                      builder: (context, state) {
                        if (state == const AssetState.loading()) {
                          return Column(
                            children: [
                              const SizedBox(height: 70),
                              Center(
                                child: SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    color: kPrimary,
                                  ),
                                ),
                              ),
                            ],
                          );
                        } else {
                          return dataResult == null || dataResult!.isEmpty
                              ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        text: "List Asset",
                                        style: kJakartaSemibold.copyWith(
                                          fontSize: 16,
                                          color: kBlack,
                                        ),
                                        children: [
                                          TextSpan(
                                            text:
                                                " (${dataResult!.length} Asset)",
                                            style: kJakartaRegular.copyWith(
                                              fontSize: 16,
                                              color: kBlack,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 60),
                                  Center(
                                    child: Text(
                                      "Data is empty",
                                      style: kJakartaRegular,
                                    ),
                                  ),
                                ],
                              )
                              : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        text: "List Asset",
                                        style: kJakartaSemibold.copyWith(
                                          fontSize: 16,
                                          color: kBlack,
                                        ),
                                        children: [
                                          TextSpan(
                                            text:
                                                " (${dataResult!.length} Asset)",
                                            style: kJakartaRegular.copyWith(
                                              fontSize: 16,
                                              color: kBlack,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    padding: const EdgeInsets.only(
                                      left: 16,
                                      right: 16,
                                      top: 12,
                                    ),
                                    shrinkWrap: true,
                                    itemCount: dataResult!.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          context
                                              .pushNamed(
                                                RouteName.assetDetailPage,
                                                extra: [
                                                  data![index],
                                                  true,
                                                  "0",
                                                  0,
                                                ],
                                              )
                                              .then((value) => refresh());
                                        },
                                        child: Card(
                                          color: kWhite,
                                          margin: const EdgeInsets.only(
                                            bottom: 14,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                            side: const BorderSide(
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
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  dataResult![index]
                                                      .productCode!,
                                                  style: kJakartaBold,
                                                ),
                                                const Divider(),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      flex: 2,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            dataResult![index]
                                                                .productName!,
                                                            style:
                                                                kJakartaRegular,
                                                          ),
                                                          const SizedBox(
                                                            height: 10,
                                                          ),
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
                                                                          ""
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
                                                        alignment:
                                                            Alignment
                                                                .centerRight,
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: BarcodeWidget(
                                                            data:
                                                                dataResult![index]
                                                                    .productCode!,
                                                            barcode:
                                                                Barcode.qrCode(),
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
                              );
                        }
                      },
                    ),
                  ],
                ),
              );
        },
      ),
    );
  }
}
