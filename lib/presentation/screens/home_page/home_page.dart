import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';
import 'package:toda/presentation/utils/method.dart';
import 'package:upgrader/upgrader.dart';

import '../../../bloc/auth/auth_bloc.dart';
import '../../../bloc/barcode/barcode_bloc.dart';
import '../../../domain/models/asset_model/asset_model.dart';
import '../../../domain/models/location_model/location_model.dart';
import '../../../domain/models/profile_model/profile_model.dart';
import '../../router/app_route.dart';
import '../../utils/app_styles.dart';
import '../../widgets/app_dialog.dart';
import 'components/menu_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = false;
  final DatabaseReference _database = FirebaseDatabase.instance.ref().child(
    'toda',
  );
  List<Map<dynamic, dynamic>> _items = [];

  Future<void> refresh() async {
    context.read<AuthBloc>().add(const AuthEvent.authDetail());
    _fetchData();
  }

  void _fetchData() {
    _database.onValue.listen((event) async {
      final Map<dynamic, dynamic>? data =
          event.snapshot.value as Map<dynamic, dynamic>?;
      final List<Map<dynamic, dynamic>> itemsList = [];

      if (data != null && data.isNotEmpty) {
        data.forEach((key, value) {
          itemsList.add(value as Map<dynamic, dynamic>);
        });

        if (itemsList.length > 5) {
          final firstKey = data.keys.first;
          await _database.child(firstKey).remove();
        }
      }

      setState(() {
        _items = itemsList.reversed.toList();
      });
    });
  }

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
  );

  @override
  void initState() {
    refresh();
    _initPackageInfo();
    super.initState();
  }

  ProfileModel? profile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UpgradeAlert(
        upgrader: Upgrader(durationUntilAlertAgain: const Duration(days: 1)),
        child: MultiBlocListener(
          listeners: [
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  profile: (data) {
                    profile = data;
                  },
                  error: (errorMessage) {
                    showAppDialog(
                      context,
                      type: DialogType.error,
                      message: errorMessage,
                    );
                  },
                  success: () {
                    context.goNamed(RouteName.loginPage);
                  },
                );
              },
            ),
          ],
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 52),
                width: 100.w,
                height: 100.h,
                decoration: BoxDecoration(color: kPrimary),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 75.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "Hai..👋,",
                              style: kJakartaLight.copyWith(
                                color: kWhite,
                                fontSize: 18,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      " (${(_packageInfo.version != 'Unknown') ? _packageInfo.version : "Unknown"})",
                                  style: kJakartaLight.copyWith(
                                    color: kWhite,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          BlocBuilder<AuthBloc, AuthState>(
                            builder: (context, state) {
                              return state == const AuthState.loading()
                                  ? Text(
                                    "-",
                                    style: kJakartaSemibold.copyWith(
                                      color: kWhite,
                                      fontSize: 20,
                                    ),
                                  )
                                  : Text(
                                    profile != null
                                        ? profile!.name!.capitalize()
                                        : "-",
                                    style: kJakartaSemibold.copyWith(
                                      color: kWhite,
                                      fontSize: 20,
                                    ),
                                  );
                            },
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        showAppDialog(
                          context,
                          type: DialogType.confirm,
                          message: "Are you sure?",
                          onConfirm: () {
                            context.read<AuthBloc>().add(
                              const AuthEvent.logOut(),
                            );
                          },
                        );
                      },
                      icon: Icon(Icons.logout, color: kWhite),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 100.w,
                  height: 86.h,
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 42),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MenuItem(
                              onTap: () {
                                context.pushNamed(RouteName.assetPage);
                              },
                              image: "assets/png/asset.png",
                              text: "Asset",
                            ),
                            MenuItem(
                              onTap: () {
                                context.pushNamed(RouteName.locationPage);
                              },
                              image: "assets/png/location.png",
                              text: "Location",
                            ),
                            MenuItem(
                              onTap: () {
                                context.pushNamed(RouteName.movingPage);
                              },
                              image: "assets/png/move_asset.png",
                              text: "Transfer",
                            ),
                            // MenuItem(
                            //     onTap: () {
                            //       Navigator.of(context).push(MaterialPageRoute(
                            //           builder: (context) => const AssetPage()));
                            //     },
                            //     image: "assets/png/reminder.png",
                            //     text: "Reminder")
                          ],
                        ),
                        const SizedBox(height: 42),
                        BlocConsumer<BarcodeBloc, BarcodeState>(
                          listener: (context, state) {
                            state.maybeWhen(
                              orElse: () {},
                              successWithDataLocation: (data) {
                                LocationModel dataLocation = data;

                                if (dataLocation.result != null &&
                                    dataLocation.result!.data != null &&
                                    dataLocation.result!.data!.isNotEmpty) {
                                  context.pushNamed(
                                    RouteName.locationDetailPage,
                                    extra: dataLocation.result!.data!.first,
                                  );
                                } else {
                                  showAppDialog(
                                    context,
                                    type: DialogType.error,
                                    message: "Data not found",
                                  );
                                }
                              },
                              successWithDataAsset: (data) {
                                AssetModel dataAsset = data;

                                if (dataAsset.result != null &&
                                    dataAsset.result!.data != null &&
                                    dataAsset.result!.data!.isNotEmpty) {
                                  context.pushNamed(
                                    RouteName.assetDetailPage,
                                    extra: [
                                      dataAsset.result!.data!.first,
                                      true,
                                      "0",
                                      0,
                                    ],
                                  );
                                } else {
                                  showAppDialog(
                                    context,
                                    type: DialogType.error,
                                    message: "Data not found",
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
                            return InkWell(
                              onTap: () async {
                                if (state != const BarcodeState.loading()) {
                                  var res =
                                      await SimpleBarcodeScanner.scanBarcode(
                                        context,
                                        barcodeAppBar: const BarcodeAppBar(
                                          appBarTitle: 'Scan Asset Barcode',
                                          centerTitle: false,
                                          enableBackButton: true,
                                          backButtonIcon: Icon(
                                            Icons.arrow_back_ios,
                                          ),
                                        ),
                                        isShowFlashIcon: true,
                                        delayMillis: 500,
                                        cameraFace: CameraFace.back,
                                        scanFormat: ScanFormat.ONLY_QR_CODE,
                                      );

                                  if (res is String && res != "-1") {
                                    context.read<BarcodeBloc>().add(
                                      BarcodeEvent.detailData(res),
                                    );
                                  }
                                }
                              },
                              child: Center(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 80,
                                    vertical: 32,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    border: Border.all(
                                      color: kStroke,
                                      width: 6,
                                    ),
                                    gradient: RadialGradient(
                                      radius: 1.8,
                                      colors: [
                                        kPrimary,
                                        Color.fromARGB(255, 184, 170, 249),
                                      ],
                                    ),
                                  ),
                                  child:
                                      isLoading
                                          ? Column(
                                            children: [
                                              Image.asset(
                                                "assets/png/barcode.png",
                                              ),
                                              const SizedBox(height: 16),
                                              const CircularProgressIndicator(
                                                color: Colors.white,
                                              ), // ganti dengan kWhite
                                            ],
                                          )
                                          : Column(
                                            children: [
                                              Image.asset(
                                                "assets/png/barcode.png",
                                              ),
                                              const SizedBox(height: 16),
                                              const Text(
                                                "SCAN BARCODE",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color:
                                                      Colors
                                                          .white, // ganti dengan kWhite
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                ),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 42),
                        if (_items.isNotEmpty) ...[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              "History Transfer 🔄",
                              style: kJakartaSemibold.copyWith(fontSize: 16),
                            ),
                          ),
                          const SizedBox(height: 16),
                          ListView.builder(
                            itemCount: _items.length,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  context.pushNamed(
                                    RouteName.assetDetailPage,
                                    extra: [
                                      null,
                                      true,
                                      _items[index]["product_code"],
                                      0,
                                    ],
                                  );
                                },
                                child: Card(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          _items[index]["product_code"],
                                          style: kJakartaBold,
                                        ),
                                        Text(
                                          _items[index]["product_name"],
                                          style: kJakartaRegular,
                                        ),
                                        const SizedBox(height: 4),
                                        const Divider(),
                                        const SizedBox(height: 4),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Center(
                                                child: Text(
                                                  _items[index]["location_before_name"] ==
                                                              null ||
                                                          _items[index]["location_before_name"] ==
                                                              ""
                                                      ? "Unknown"
                                                      : _items[index]["location_before_name"],
                                                  style: kJakartaMedium.copyWith(
                                                    color:
                                                        _items[index]["location_before_name"] ==
                                                                    null ||
                                                                _items[index]["location_before_name"] ==
                                                                    ""
                                                            ? kGrey
                                                            : kBlack,
                                                    fontSize: 16,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 2,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 4),
                                            FittedBox(
                                              child: Icon(
                                                Icons.cached_sharp,
                                                color: kPrimary,
                                              ),
                                            ),
                                            const SizedBox(width: 4),
                                            Expanded(
                                              child: Center(
                                                child: Text(
                                                  _items[index]["location_name"],
                                                  style: kJakartaMedium
                                                      .copyWith(fontSize: 16),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 2,
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
                          const SizedBox(height: 60),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
