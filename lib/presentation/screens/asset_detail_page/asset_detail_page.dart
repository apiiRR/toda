import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../bloc/asset/asset_bloc.dart';
import '../../../domain/models/asset_model/datum.dart';
import '../../../domain/models/asset_model/history_id.dart';
import '../../../domain/models/asset_model/notes_history_id.dart';
import '../../../domain/models/asset_model/user_history_id.dart';
import '../../router/app_route.dart';
import '../../utils/app_styles.dart';
import '../../utils/method.dart';
import '../../widgets/app_dialog.dart';
import '../../widgets/text_field_title.dart';

class AssetDetailPage extends StatefulWidget {
  const AssetDetailPage({
    super.key,
    required this.data,
    this.isRefresh = false,
    this.productCode = "0",
    this.countDuplicate = 0,
  });
  final Datum? data;
  final bool isRefresh;
  final String productCode;
  final int countDuplicate;

  @override
  State<AssetDetailPage> createState() => _AssetDetailPageState();
}

class _AssetDetailPageState extends State<AssetDetailPage>
    with TickerProviderStateMixin {
  late TabController _controller;
  Future<void> refresh() async {
    context.read<AssetBloc>().add(AssetEvent.getDataSingle(widget.data!.id!));
  }

  @override
  void initState() {
    _controller = TabController(vsync: this, length: 4);
    dataAsset = widget.data;
    if (widget.productCode != "0") {
      context.read<AssetBloc>().add(
        AssetEvent.customData({"name": widget.productCode}),
      );
    } else {
      if (dataAsset!.imageUrl != null && dataAsset!.imageUrl != "") {
        String hostUrl = dataAsset!.imageUrl!.replaceFirst(
          '192.168.24.77:9112',
          '202.93.133.54',
        );
        dataAsset = dataAsset!.copyWith(imageUrl: hostUrl);
      }
    }
    super.initState();
  }

  Datum? dataAsset;
  final idr = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ');

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              context.pop(true);
              // if (widget.isRefresh == false) {
              //   context.pop(true);
              // } else {
              //   context.pop(false);
              // }
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded, color: kWhite),
          ),
          backgroundColor: kPrimary,
          title: Text(
            "Asset Details",
            style: kJakartaRegular.copyWith(color: kWhite),
          ),
          actions: [
            PopupMenuButton<String>(
              icon: Icon(Icons.more_vert_sharp, color: kWhite),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: kWhite,
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                // PopupMenuItem<String>(
                //   child: ListTile(
                //     leading: const Icon(
                //       Icons.control_point_duplicate_rounded,
                //     ),
                //     title: Text('Duplicate', style: kJakartaRegular),
                //   ),
                //   onTap: () async {
                //     String image = "";
                //     if (dataAsset!.imageUrl != "") {
                //       String imageConverter =
                //           await downloadImageAndConvertToBase64(
                //             dataAsset!.imageUrl!,
                //           );

                //       image = imageConverter;

                //       Map<String, dynamic> inputData = {
                //         "product_name":
                //             "${dataAsset!.productName.toString()} Duplicate${widget.countDuplicate == 0 ? "" : widget.countDuplicate}",
                //         "product_code":
                //             "${dataAsset!.productCode.toString()} Duplicate${widget.countDuplicate == 0 ? "" : widget.countDuplicate}",
                //         "user_name": dataAsset!.userName.toString(),
                //         "notes": dataAsset!.notes.toString(),
                //         "image": image,
                //       };

                //       context.read<AssetBloc>().add(
                //         AssetEvent.postDataDuplicate(inputData),
                //       );
                //     } else {
                //       Map<String, dynamic> inputData = {
                //         "product_name":
                //             "${dataAsset!.productName.toString()} Duplicate${widget.countDuplicate == 0 ? "" : widget.countDuplicate}",
                //         "product_code":
                //             "${dataAsset!.productCode.toString()} Duplicate${widget.countDuplicate == 0 ? "" : widget.countDuplicate}",
                //         "user_name": dataAsset!.userName.toString(),
                //         "notes": dataAsset!.notes.toString(),
                //       };

                //       context.read<AssetBloc>().add(
                //         AssetEvent.postDataDuplicate(inputData),
                //       );
                //     }
                //   },
                // ),
                PopupMenuItem<String>(
                  child: ListTile(
                    leading: const Icon(Icons.edit),
                    title: Text('Edit', style: kJakartaRegular),
                  ),
                  onTap: () {
                    context
                        .pushNamed(RouteName.assetEditPage, extra: dataAsset)
                        .then((value) => refresh());
                  },
                ),
                PopupMenuItem<String>(
                  child: ListTile(
                    leading: const Icon(Icons.delete),
                    title: Text('Delete', style: kJakartaRegular),
                  ),
                  onTap: () {
                    if (dataAsset != null) {
                      context.read<AssetBloc>().add(
                        AssetEvent.deleteData(dataAsset!.id!),
                      );
                    }
                  },
                ),
                // PopupMenuItem<String>(
                //   child: const ListTile(
                //     leading: Icon(Icons.print),
                //     title: Text('Print Barcode'),
                //   ),
                //   onTap: () {
                //     if (dataAsset != null) {
                //       context
                //           .read<AssetBloc>()
                //           .add(AssetEvent.deleteData(dataAsset!.id!));
                //     }
                //   },
                // ),
              ],
            ),
          ],
          centerTitle: true,
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
                setState(() {
                  dataAsset = data.result!.data!.first;
                  if (dataAsset!.imageUrl != null &&
                      dataAsset!.imageUrl != "") {
                    String hostUrl = dataAsset!.imageUrl!.replaceFirst(
                      '192.168.24.77:9112',
                      '202.93.133.54',
                    );
                    dataAsset = dataAsset!.copyWith(imageUrl: hostUrl);
                  }
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
              successDuplicate: (asset) {
                showAppDialog(
                  context,
                  type: DialogType.success,
                  message: "Data has been successfully duplicated",
                  onConfirm: () {
                    context.pushReplacementNamed(
                      RouteName.assetDetailPage,
                      extra: [asset.result!.data!.first, false, "0", 0],
                    );
                  },
                );
              },
            );
          },
          builder: (context, state) {
            return state == const AssetState.loading()
                ? Center(child: CircularProgressIndicator(color: kPrimary))
                : SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (dataAsset != null) ...[
                          const SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              "Data Asset",
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextFieldTitle(
                                        title: "Asset Code",
                                        text: dataAsset!.productCode!,
                                      ),
                                      const Divider(),
                                      TextFieldTitle(
                                        title: "Asset Name",
                                        text: dataAsset!.productName!,
                                      ),
                                      const Divider(),
                                      TextFieldTitle(
                                        title: "Merk",
                                        text: dataAsset!.merkId!.isNotEmpty
                                            ? dataAsset!.merkId![1]
                                            : "-",
                                      ),
                                      const Divider(),
                                      TextFieldTitle(
                                        title: "Location",
                                        text:
                                            dataAsset!.locationName! != "false"
                                            ? "${dataAsset!.assetLocationId![1]} / ${dataAsset!.locationName.toString()}"
                                            : "-",
                                      ),
                                      const Divider(),
                                      TextFieldTitle(
                                        title: "User Active",
                                        text:
                                            dataAsset!.userName! != "false" &&
                                                dataAsset!.userName! != "null"
                                            ? dataAsset!.userName!
                                            : "-",
                                      ),
                                      const Divider(),
                                      TextFieldTitle(
                                        title: "Lifetime",
                                        text: dataAsset!.lifetime != null
                                            ? "${dataAsset!.lifetime!.toString()} Year"
                                            : "-",
                                      ),
                                      const Divider(),
                                      TextFieldTitle(
                                        title: "Condition",
                                        text:
                                            dataAsset!.kondisi! != "false" &&
                                                dataAsset!.kondisi! != ""
                                            ? dataAsset!.kondisi!.capitalize()
                                            : "-",
                                      ),
                                      const Divider(),
                                      TextFieldTitle(
                                        title: "Notes",
                                        text:
                                            dataAsset!.notes! != "false" &&
                                                dataAsset!.notes! != "null"
                                            ? dataAsset!.notes!
                                            : "-",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 32),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              "Data PO Asset",
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextFieldTitle(
                                        title: "PO Date",
                                        text:
                                            dataAsset!.poDate! != "false" &&
                                                dataAsset!.poDate! != ""
                                            ? DateFormat(
                                                'EEEE, dd/MMMM/yyyy',
                                              ).format(
                                                DateTime.parse(
                                                  dataAsset!.poDate!.toString(),
                                                ),
                                              )
                                            : "-",
                                      ),
                                      const Divider(),
                                      TextFieldTitle(
                                        title: "PO Number",
                                        text:
                                            dataAsset!.poNumber! != "false" &&
                                                dataAsset!.poNumber! != ""
                                            ? dataAsset!.poNumber.toString()
                                            : "-",
                                      ),
                                      const Divider(),
                                      TextFieldTitle(
                                        title: "PO Amount",
                                        text: dataAsset!.poAmount != null
                                            ? idr.format(dataAsset!.poAmount)
                                            : "-",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 32),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              "Data Depreciation Asset",
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextFieldTitle(
                                        title: "Residual Value",
                                        text: dataAsset!.residualValue != null
                                            ? idr.format(
                                                dataAsset!.residualValue,
                                              )
                                            : "-",
                                      ),
                                      const Divider(),
                                      TextFieldTitle(
                                        title: "Accumulated Depreciation",
                                        text:
                                            dataAsset!
                                                    .currentAccumulatedDepreciation !=
                                                null
                                            ? idr.format(
                                                dataAsset!
                                                    .currentAccumulatedDepreciation,
                                              )
                                            : "-",
                                      ),
                                      const Divider(),
                                      TextFieldTitle(
                                        title: "Current Depreciable Amount",
                                        text:
                                            dataAsset!
                                                    .currentDepreciableAmount !=
                                                null
                                            ? idr.format(
                                                dataAsset!
                                                    .currentDepreciableAmount,
                                              )
                                            : "-",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // if (dataAsset!.imageUrl! != "") ...[
                          //   const SizedBox(height: 32),
                          //   Padding(
                          //     padding: const EdgeInsets.symmetric(
                          //       horizontal: 16,
                          //     ),
                          //     child: Text(
                          //       "Asset Image",
                          //       textAlign: TextAlign.left,
                          //       style: kJakartaSemibold.copyWith(fontSize: 16),
                          //     ),
                          //   ),
                          //   const SizedBox(height: 10),
                          //   Padding(
                          //     padding: const EdgeInsets.symmetric(
                          //       horizontal: 16,
                          //     ),
                          //     child: SizedBox(
                          //       width: 100.w,
                          //       child: InkWell(
                          //         onTap: () {
                          //           context.pushNamed(
                          //             RouteName.showImagePage,
                          //             extra: dataAsset!.imageUrl!,
                          //           );
                          //         },
                          //         child: Card(
                          //           shape: RoundedRectangleBorder(
                          //             borderRadius: BorderRadius.circular(8),
                          //             side: BorderSide(color: kGrey, width: 2),
                          //           ),
                          //           surfaceTintColor: kWhite,
                          //           shadowColor: kWhite,
                          //           color: kWhite,
                          //           margin: EdgeInsets.zero,
                          //           child: SizedBox(
                          //             height: 200,
                          //             width: double.infinity,
                          //             child: Image.network(
                          //               dataAsset!.imageUrl.toString(),
                          //               loadingBuilder:
                          //                   (
                          //                     BuildContext context,
                          //                     Widget child,
                          //                     ImageChunkEvent? loadingProgress,
                          //                   ) {
                          //                     if (loadingProgress == null) {
                          //                       return child;
                          //                     }
                          //                     return Center(
                          //                       child: SizedBox(
                          //                         width: 20,
                          //                         height: 20,
                          //                         child: CircularProgressIndicator(
                          //                           color: kPrimary,
                          //                           value:
                          //                               loadingProgress
                          //                                       .expectedTotalBytes !=
                          //                                   null
                          //                               ? loadingProgress
                          //                                         .cumulativeBytesLoaded /
                          //                                     loadingProgress
                          //                                         .expectedTotalBytes!
                          //                               : null,
                          //                         ),
                          //                       ),
                          //                     );
                          //                   },
                          //               errorBuilder:
                          //                   (context, error, stackTrace) {
                          //                     return Center(
                          //                       child: Text(
                          //                         "Error $error",
                          //                         style: kJakartaRegular,
                          //                         textAlign: TextAlign.center,
                          //                       ),
                          //                     );
                          //                   },
                          //             ),
                          //           ),
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ],
                          const SizedBox(height: 32),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              "Asset History",
                              textAlign: TextAlign.left,
                              style: kJakartaSemibold.copyWith(fontSize: 16),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 48,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: kStroke,
                              borderRadius: BorderRadius.circular(0),
                              border: Border.all(
                                width: 0,
                                color: Colors.transparent,
                              ),
                            ),
                            child: TabBar(
                              unselectedLabelColor: kPrimary,
                              labelColor: kWhite,
                              indicatorColor: kPrimary,
                              indicatorWeight: 0,
                              indicator: BoxDecoration(
                                color: kPrimary,
                                borderRadius: BorderRadius.circular(0),
                              ),
                              indicatorSize: TabBarIndicatorSize.tab,
                              controller: _controller,
                              tabs: const [
                                Tab(text: 'Location'),
                                Tab(text: 'User'),
                                Tab(text: 'Note'),
                                Tab(text: 'Condition'),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 70.h,
                            child: TabBarView(
                              controller: _controller,
                              children: [
                                locationHistoryView(),
                                userHistoryView(),
                                noteHistoryView(),
                                conditionHistoryView(),
                              ],
                            ),
                          ),
                        ] else ...[
                          const SizedBox(height: 50),
                          Text("Data not found", style: kJakartaRegular),
                        ],
                      ],
                    ),
                  );
          },
        ),
      ),
    );
  }

  SingleChildScrollView conditionHistoryView() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (dataAsset!.imageUrl! != "") ...[
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Current Condition",
                textAlign: TextAlign.left,
                style: kJakartaSemibold.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: 100.w,
                child: InkWell(
                  onTap: () {
                    context.pushNamed(
                      RouteName.showImagePage,
                      extra: dataAsset!.imageUrl!,
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: kGrey, width: 2),
                    ),
                    surfaceTintColor: kWhite,
                    shadowColor: kWhite,
                    color: kWhite,
                    margin: EdgeInsets.zero,
                    child: SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: Image.network(
                        dataAsset!.imageUrl.toString(),
                        loadingBuilder:
                            (
                              BuildContext context,
                              Widget child,
                              ImageChunkEvent? loadingProgress,
                            ) {
                              if (loadingProgress == null) {
                                return child;
                              }
                              return Center(
                                child: SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    color: kPrimary,
                                    value:
                                        loadingProgress.expectedTotalBytes !=
                                            null
                                        ? loadingProgress
                                                  .cumulativeBytesLoaded /
                                              loadingProgress
                                                  .expectedTotalBytes!
                                        : null,
                                  ),
                                ),
                              );
                            },
                        errorBuilder: (context, error, stackTrace) {
                          return Center(
                            child: Text(
                              "Error $error",
                              style: kJakartaRegular,
                              textAlign: TextAlign.center,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Past Condition",
                textAlign: TextAlign.left,
                style: kJakartaSemibold.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 10),
            dataAsset!.pastImageUrl! != ""
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      width: 100.w,
                      child: InkWell(
                        onTap: () {
                          context.pushNamed(
                            RouteName.showImagePage,
                            extra: dataAsset!.pastImageUrl!,
                          );
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color: kGrey, width: 2),
                          ),
                          surfaceTintColor: kWhite,
                          shadowColor: kWhite,
                          color: kWhite,
                          margin: EdgeInsets.zero,
                          child: SizedBox(
                            height: 200,
                            width: double.infinity,
                            child: Image.network(
                              dataAsset!.imageUrl.toString(),
                              loadingBuilder:
                                  (
                                    BuildContext context,
                                    Widget child,
                                    ImageChunkEvent? loadingProgress,
                                  ) {
                                    if (loadingProgress == null) {
                                      return child;
                                    }
                                    return Center(
                                      child: SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: CircularProgressIndicator(
                                          color: kPrimary,
                                          value:
                                              loadingProgress
                                                      .expectedTotalBytes !=
                                                  null
                                              ? loadingProgress
                                                        .cumulativeBytesLoaded /
                                                    loadingProgress
                                                        .expectedTotalBytes!
                                              : null,
                                        ),
                                      ),
                                    );
                                  },
                              errorBuilder: (context, error, stackTrace) {
                                return Center(
                                  child: Text(
                                    "Error $error",
                                    style: kJakartaRegular,
                                    textAlign: TextAlign.center,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : Padding(
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
                        child: SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              "Data not found",
                              style: kJakartaRegular,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
          ] else ...[
            const SizedBox(height: 50),
            Center(child: Text("Data not found", style: kJakartaRegular)),
          ],
        ],
      ),
    );
  }

  SingleChildScrollView noteHistoryView() {
    return SingleChildScrollView(
      child: Column(
        children: [
          if (dataAsset!.notesHistoryIds!.isNotEmpty) ...[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: dataAsset!.notesHistoryIds!.length,
                  itemBuilder: (BuildContext context, int index) {
                    List<NotesHistoryId> notesHistory = dataAsset!
                        .notesHistoryIds!
                        .reversed
                        .toList();
                    return TimelineTile(
                      alignment: TimelineAlign.manual,
                      lineXY: 0.1,
                      isFirst: index == 0,
                      isLast: notesHistory.length - 1 == index,
                      indicatorStyle: IndicatorStyle(
                        width: 40,
                        height: 40,
                        indicator: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.fromBorderSide(
                              BorderSide(color: Colors.transparent, width: 4),
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              notesHistory.indexOf(notesHistory[index]) == 0
                                  ? Icons.check_circle_rounded
                                  : Icons.cached_rounded,
                              color:
                                  notesHistory.indexOf(notesHistory[index]) == 0
                                  ? kPrimary
                                  : kGrey,
                            ),
                          ),
                        ),
                        drawGap: true,
                      ),
                      beforeLineStyle: LineStyle(thickness: 2, color: kGrey),
                      endChild: Container(
                        margin: const EdgeInsets.only(top: 16, right: 16),
                        padding: const EdgeInsets.only(
                          left: 16,
                          top: 6,
                          bottom: 6,
                        ),
                        decoration: BoxDecoration(
                          color: notesHistory.indexOf(notesHistory[index]) == 0
                              ? kWhite
                              : kStroke,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color:
                                notesHistory.indexOf(notesHistory[index]) == 0
                                ? kPrimary
                                : kGrey,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // const SizedBox(
                            //   height: 26,
                            // ),
                            Text(
                              "Notes : ${notesHistory[index].name!}",
                              style: kJakartaRegular,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "Changed By : ${notesHistory[index].userId![1].toString().capitalize()}",
                              style: kJakartaLight.copyWith(fontSize: 12),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              DateFormat('EEEE, dd MMMM yyyy - HH:mm').format(
                                DateTime.parse(
                                  notesHistory[index].date!,
                                ).add(const Duration(hours: 7)),
                              ),
                              style: kJakartaLight.copyWith(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 30),
              ],
            ),
          ] else ...[
            const SizedBox(height: 50),
            Text("Data not found", style: kJakartaRegular),
          ],
        ],
      ),
    );
  }

  SingleChildScrollView userHistoryView() {
    return SingleChildScrollView(
      child: Column(
        children: [
          if (dataAsset!.userHistoryIds!.isNotEmpty) ...[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: dataAsset!.userHistoryIds!.length,
                  itemBuilder: (BuildContext context, int index) {
                    List<UserHistoryId> userHistory = dataAsset!
                        .userHistoryIds!
                        .reversed
                        .toList();
                    return TimelineTile(
                      alignment: TimelineAlign.manual,
                      lineXY: 0.1,
                      isFirst: index == 0,
                      isLast: userHistory.length - 1 == index,
                      indicatorStyle: IndicatorStyle(
                        width: 40,
                        height: 40,
                        indicator: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.fromBorderSide(
                              BorderSide(color: Colors.transparent, width: 4),
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              userHistory.indexOf(userHistory[index]) == 0
                                  ? Icons.check_circle_rounded
                                  : Icons.cached_rounded,
                              color:
                                  userHistory.indexOf(userHistory[index]) == 0
                                  ? kPrimary
                                  : kGrey,
                            ),
                          ),
                        ),
                        drawGap: true,
                      ),
                      beforeLineStyle: LineStyle(thickness: 2, color: kGrey),
                      endChild: Container(
                        margin: const EdgeInsets.only(top: 16, right: 16),
                        padding: const EdgeInsets.only(
                          left: 16,
                          top: 6,
                          bottom: 6,
                        ),
                        decoration: BoxDecoration(
                          color: userHistory.indexOf(userHistory[index]) == 0
                              ? kWhite
                              : kStroke,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: userHistory.indexOf(userHistory[index]) == 0
                                ? kPrimary
                                : kGrey,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // const SizedBox(
                            //   height: 26,
                            // ),
                            Text(
                              userHistory[index].name!,
                              style: kJakartaSemibold,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "Changed By : ${userHistory[index].userId![1].toString().capitalize()}",
                              style: kJakartaLight.copyWith(fontSize: 12),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              DateFormat('EEEE, dd MMMM yyyy - HH:mm').format(
                                DateTime.parse(
                                  userHistory[index].date!,
                                ).add(const Duration(hours: 7)),
                              ),
                              style: kJakartaLight.copyWith(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 30),
              ],
            ),
          ] else ...[
            const SizedBox(height: 50),
            Text("Data not found", style: kJakartaRegular),
          ],
        ],
      ),
    );
  }

  SingleChildScrollView locationHistoryView() {
    return SingleChildScrollView(
      child: Column(
        children: [
          if (dataAsset!.historyIds!.isNotEmpty) ...[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: dataAsset!.historyIds!.length,
                  itemBuilder: (BuildContext context, int index) {
                    List<HistoryId> history = dataAsset!.historyIds!.reversed
                        .toList();
                    return TimelineTile(
                      alignment: TimelineAlign.manual,
                      lineXY: 0.1,
                      isFirst: index == 0,
                      isLast: history.length - 1 == index,
                      indicatorStyle: IndicatorStyle(
                        width: 40,
                        height: 40,
                        indicator: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.fromBorderSide(
                              BorderSide(color: Colors.transparent, width: 4),
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              history.indexOf(history[index]) == 0
                                  ? Icons.check_circle_rounded
                                  : Icons.cached_rounded,
                              color: history.indexOf(history[index]) == 0
                                  ? kPrimary
                                  : kGrey,
                            ),
                          ),
                        ),
                        drawGap: true,
                      ),
                      beforeLineStyle: LineStyle(thickness: 2, color: kGrey),
                      endChild: Container(
                        margin: const EdgeInsets.only(top: 16, right: 16),
                        padding: const EdgeInsets.only(
                          left: 16,
                          top: 6,
                          bottom: 6,
                        ),
                        decoration: BoxDecoration(
                          color: history.indexOf(history[index]) == 0
                              ? kWhite
                              : kStroke,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: history.indexOf(history[index]) == 0
                                ? kPrimary
                                : kGrey,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // const SizedBox(
                            //   height: 26,
                            // ),
                            Text(
                              history[index].locationName! != "false"
                                  ? "${history[index].locationCode} / ${history[index].locationName!}"
                                  : "-",
                              style: kJakartaSemibold,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "Changed By : ${history[index].userId![1].toString().capitalize()}",
                              style: kJakartaLight.copyWith(fontSize: 12),
                              overflow: TextOverflow.ellipsis,
                            ),

                            Text(
                              DateFormat('EEEE, dd MMMM yyyy - HH:mm').format(
                                DateTime.parse(
                                  history[index].scanDate!,
                                ).add(const Duration(hours: 7)),
                              ),
                              style: kJakartaLight.copyWith(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 30),
              ],
            ),
          ] else ...[
            const SizedBox(height: 50),
            Text("Data not found", style: kJakartaRegular),
          ],
        ],
      ),
    );
  }
}
