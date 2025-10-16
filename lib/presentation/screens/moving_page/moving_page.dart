import 'package:dotted_line/dotted_line.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

import '../../../bloc/asset/asset_bloc.dart';
import '../../../bloc/barcode/barcode_bloc.dart';
import '../../../bloc/location/location_bloc.dart';
import '../../../domain/models/asset_model/asset_model.dart';
import '../../../domain/models/asset_model/datum.dart' as asset_datum;
import '../../../domain/models/location_model/datum.dart' as location_datum;
import '../../../domain/models/location_model/location_model.dart';
import '../../utils/app_styles.dart';
import '../../widgets/app_dialog.dart';
import '../../widgets/dropdown_search_asset.dart';
import '../../widgets/dropdown_search_location.dart';
import '../../widgets/rounded_button_loading.dart';
import '../../widgets/rounded_button_solid.dart';
import '../../widgets/text_field_title.dart';

class MovingPage extends StatefulWidget {
  const MovingPage({super.key});

  @override
  State<MovingPage> createState() => _MovingPageState();
}

class _MovingPageState extends State<MovingPage> {
  location_datum.Datum? dataLocation;
  List<asset_datum.Datum> dataAsset = [];
  Map<String, dynamic> _items = {};
  final DatabaseReference _database = FirebaseDatabase.instance.ref().child(
    'master',
  );

  scanBarcode() async {
    var res = await SimpleBarcodeScanner.scanBarcode(
      context,
      barcodeAppBar: const BarcodeAppBar(
        appBarTitle: 'Scan Asset Barcode',
        centerTitle: false,
        enableBackButton: true,
        backButtonIcon: Icon(Icons.arrow_back_ios),
      ),
      isShowFlashIcon: true,
      delayMillis: 500,
      cameraFace: CameraFace.back,
      scanFormat: ScanFormat.ONLY_QR_CODE,
    );

    if (res is String) {
      if (dataLocation == null) {
        showAppDialog(
          context,
          type: DialogType.error,
          message: "Data location not found!",
        );
      } else {
        context.read<AssetBloc>().add(AssetEvent.scanData(res));
      }
    }
  }

  void _fetchData() {
    _database.onValue.listen((event) async {
      final Map<dynamic, dynamic>? data =
          event.snapshot.value as Map<dynamic, dynamic>?;

      if (data != null && data.isNotEmpty) {
        setState(() {
          _items = data.map((key, value) {
            if (key is String) {
              return MapEntry(key, value);
            } else {
              throw Exception('Invalid key type');
            }
          });
        });
      }
    });
  }

  @override
  void initState() {
    _fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimary,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: kWhite),
        ),
        title: Text("Transfer", style: kJakartaRegular.copyWith(color: kWhite)),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            icon: Icon(Icons.more_vert_sharp, color: kWhite),
            itemBuilder:
                (BuildContext context) => <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    child: const ListTile(
                      leading: Icon(Icons.clear_rounded),
                      title: Text('Clear'),
                    ),
                    onTap: () {
                      setState(() {
                        dataLocation = null;
                        dataAsset.isEmpty;
                      });
                    },
                  ),
                ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimary,
        onPressed: () {
          scanBarcode();
        },
        child: Image.asset("assets/png/barcode.png", scale: 5),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            BlocConsumer<LocationBloc, LocationState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  successWithData: (data) {
                    LocationModel dataTemp = data;

                    if (dataTemp.result != null &&
                        dataTemp.result!.data != null &&
                        dataTemp.result!.data!.isNotEmpty) {
                      setState(() {
                        dataLocation = dataTemp.result!.data!.first;
                      });
                    } else {
                      showAppDialog(
                        context,
                        type: DialogType.error,
                        message: "Data not found!",
                      );
                    }
                  },
                  error: (errorMessage) {
                    showAppDialog(
                      context,
                      type: DialogType.error,
                      message: errorMessage,
                    );
                  },
                );
              },
              builder: (context, state) {
                return state == const LocationState.loading()
                    ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 10),
                        CircularProgressIndicator(color: kPrimary),
                        const SizedBox(height: 10),
                      ],
                    )
                    : (dataLocation == null)
                    ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: DropdownSearchLocation(
                        enabled: _items.isNotEmpty ? _items["location"] : false,
                        title: "Location",
                        onChanged: (data) {
                          setState(() {
                            dataLocation = data;
                          });
                        },
                        hintText: "Room D",
                      ),
                    )
                    : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                                      text: dataLocation!.code!,
                                    ),
                                    const Divider(),
                                    TextFieldTitle(
                                      title: "Room Name",
                                      text: dataLocation!.name!,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
              },
            ),
            const SizedBox(height: 16),
            Divider(color: kGrey, thickness: 2),
            const SizedBox(height: 8),
            if ((_items.isNotEmpty && _items["asset"] == true) &&
                dataLocation != null)
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: DropdownSearchAsset(
                      selectedItems: dataAsset,
                      title: "Asset",
                      onChanged: (data) {
                        setState(() {
                          dataAsset = data;
                        });
                      },
                      hintText: "Laptop Macbook Pro M2",
                    ),
                  ),
                  const SizedBox(height: 20),
                  const DottedLine(),
                ],
              ),
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
                    AssetModel dataTemp = data;

                    if (dataTemp.result != null &&
                        dataTemp.result!.data != null &&
                        dataTemp.result!.data!.isNotEmpty) {
                      setState(() {
                        if (dataAsset.contains(dataTemp.result!.data!.first)) {
                          showAppDialog(
                            context,
                            type: DialogType.error,
                            message:
                                "Asset ${dataTemp.result!.data!.first.productName} has been added to the list",
                          );
                        } else {
                          dataAsset.add(dataTemp.result!.data!.first);
                        }
                      });
                    } else {
                      showAppDialog(
                        context,
                        type: DialogType.error,
                        message: "Data not found",
                      );
                    }
                  },
                );
              },
              builder: (context, state) {
                return state == const AssetState.loading()
                    ? Center(child: CircularProgressIndicator(color: kPrimary))
                    : dataAsset.isEmpty
                    ? Column(
                      children: [
                        SizedBox(height: 30.h),
                        Center(
                          child: Text(
                            "Data has not been added",
                            style: kJakartaRegular,
                          ),
                        ),
                      ],
                    )
                    : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.only(
                            left: 16,
                            right: 16,
                            top: 12,
                          ),
                          shrinkWrap: true,
                          itemCount: dataAsset.length,
                          itemBuilder: (context, index) {
                            return Card(
                              color: kWhite,
                              margin: const EdgeInsets.only(bottom: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                side: const BorderSide(
                                  color: Color.fromARGB(255, 149, 187, 252),
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
                                      dataAsset[index].productCode!,
                                      style: kJakartaBold,
                                    ),
                                    const Divider(),
                                    Text(
                                      dataAsset[index].productName!,
                                      style: kJakartaRegular,
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      dataAsset[index].userName! == "false" ||
                                              dataAsset[index].userName! ==
                                                  "null"
                                          ? "User has not been added"
                                          : dataAsset[index].userName!,
                                      style: kJakartaRegular.copyWith(
                                        color:
                                            dataAsset[index].userName! ==
                                                        "false" ||
                                                    dataAsset[index]
                                                            .userName! ==
                                                        "null"
                                                ? kGrey
                                                : kPrimary,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 16),
                        BlocConsumer<BarcodeBloc, BarcodeState>(
                          listener: (context, state) {
                            state.maybeWhen(
                              orElse: () {},
                              success: (message) {
                                showAppDialog(
                                  context,
                                  type: DialogType.success,
                                  message: message,
                                  onConfirm: () async {
                                    DatabaseReference databaseReference =
                                        FirebaseDatabase.instance.ref().child(
                                          'toda',
                                        );

                                    for (var element in dataAsset) {
                                      await databaseReference.push().set({
                                        "product_code": element.productCode,
                                        "product_name": element.productName,
                                        "location_name": dataLocation!.name,
                                        "location_before_name":
                                            element.historyIds!.isNotEmpty
                                                ? element
                                                    .historyIds!
                                                    .last
                                                    .locationName
                                                : "",
                                      });
                                    }

                                    setState(() {
                                      dataLocation = null;
                                      dataAsset = [];
                                    });
                                  },
                                );
                              },
                              error: (errorMessage) {
                                showAppDialog(
                                  context,
                                  type: DialogType.error,
                                  message: errorMessage,
                                );
                              },
                            );
                          },
                          builder: (context, state) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              child:
                                  state == const BarcodeState.loading()
                                      ? const RoundedButtonLoading()
                                      : RoundedButtonSolid(
                                        text: "Move Data",
                                        onAction: () {
                                          showAppDialog(
                                            context,
                                            type: DialogType.confirm,
                                            message:
                                                "Are you sure about moving this asset?",
                                            onConfirm: () async {
                                              List<Map<String, dynamic>>
                                              dataInput = [];

                                              for (var element in dataAsset) {
                                                dataInput.add({
                                                  "product_code":
                                                      element.productCode,
                                                  "location_code":
                                                      dataLocation!.code,
                                                });
                                              }

                                              context.read<BarcodeBloc>().add(
                                                BarcodeEvent.movingData(
                                                  dataInput,
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                            );
                          },
                        ),
                      ],
                    );
              },
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
