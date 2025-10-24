import 'dart:async';
import 'dart:developer';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:toda/presentation/utils/method.dart';
import 'package:upgrader/upgrader.dart';

import '../../../bloc/auth/auth_bloc.dart';
import '../../../bloc/barcode/barcode_bloc.dart';
import '../../../domain/models/asset_model/asset_model.dart';
import '../../../domain/models/location_model/location_model.dart';
import '../../router/app_route.dart';
import '../../utils/app_styles.dart';
import '../../widgets/app_dialog.dart';
import '../../widgets/scanner_page.dart';
import 'components/menu_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Kunci manual untuk mencegah race condition (TETAP DIPERLUKAN)
  bool _isScanning = false;
  StreamSubscription? _databaseSubscription;
  final DatabaseReference _database = FirebaseDatabase.instance.ref().child(
    'toda',
  );
  List<Map<dynamic, dynamic>> _items = [];

  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
  );

  @override
  void initState() {
    super.initState();
    refresh();
    _initPackageInfo();
  }

  @override
  void dispose() {
    _databaseSubscription?.cancel();
    super.dispose();
  }

  Future<void> refresh() async {
    context.read<AuthBloc>().add(const AuthEvent.authDetail());
    _fetchData();
  }

  void _fetchData() {
    _databaseSubscription?.cancel();

    _databaseSubscription = _database.onValue.listen((event) async {
      if (!mounted) return;

      final Map<dynamic, dynamic>? data =
          event.snapshot.value as Map<dynamic, dynamic>?;
      final List<Map<dynamic, dynamic>> itemsList = [];

      if (data != null && data.isNotEmpty) {
        data.forEach((key, value) {
          itemsList.add(value as Map<dynamic, dynamic>);
        });

        if (itemsList.length > 5) {
          try {
            final firstKey = data.keys.first;
            await _database.child(firstKey).remove();
          } catch (e) {
            log("Error removing old data: $e");
          }
        }
      }

      setState(() {
        _items = itemsList.reversed.toList();
      });
    });
  }

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    if (mounted) {
      setState(() {
        _packageInfo = info;
      });
    }
  }

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
                              text: "Hai..👋, ",
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
                            buildWhen: (previous, current) => current.maybeMap(
                              loading: (_) => true,
                              profile: (_) => true,
                              orElse: () =>
                                  previous.runtimeType != current.runtimeType,
                            ),
                            builder: (context, state) {
                              final String displayName = state.maybeWhen(
                                profile: (data) =>
                                    data.name?.capitalize() ?? "-",
                                orElse: () => "-",
                              );
                              return Text(
                                displayName,
                                style: kJakartaSemibold.copyWith(
                                  color: kWhite,
                                  fontSize: 20,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
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
                          ],
                        ),
                        const SizedBox(height: 42),

                        BlocConsumer<BarcodeBloc, BarcodeState>(
                          listener: (context, state) {
                            // Logika listener ini TETAP SAMA, sudah sempurna
                            state.maybeWhen(
                              orElse: () {},
                              successWithDataLocation: (data) {
                                log("[LISTENER] successWithDataLocation");
                                LocationModel dataLocation = data;
                                if (dataLocation.result != null &&
                                    dataLocation.result!.data != null &&
                                    dataLocation.result!.data!.isNotEmpty) {
                                  log(
                                    "[LISTENER] Navigasi ke LocationDetail. Kunci TIDAK dilepas.",
                                  );
                                  context
                                      .pushNamed(
                                        RouteName.locationDetailPage,
                                        extra: dataLocation.result!.data!.first,
                                      )
                                      // --- TAMBAHKAN INI ---
                                      .then((_) {
                                        // Kode ini berjalan SETELAH LocationDetailPage di-pop
                                        log(
                                          "[LISTENER] Kembali dari LocationDetail. Melepas kunci.",
                                        );
                                        if (mounted) {
                                          setState(() => _isScanning = false);
                                        }
                                      });
                                  // --- AKHIR TAMBAHAN ---
                                } else {
                                  log(
                                    "[LISTENER] GAGAL (Data not found). Melepas kunci.",
                                  );
                                  showAppDialog(
                                    context,
                                    type: DialogType.error,
                                    message: "Data not found",
                                  );
                                  if (mounted)
                                    setState(() => _isScanning = false);
                                }
                              },
                              successWithDataAsset: (data) {
                                AssetModel dataAsset = data;
                                log("[LISTENER] successWithDataAsset");
                                if (dataAsset.result != null &&
                                    dataAsset.result!.data != null &&
                                    dataAsset.result!.data!.isNotEmpty) {
                                  log(
                                    "[LISTENER] Navigasi ke AssetDetail. Kunci TIDAK dilepas.",
                                  );
                                  context
                                      .pushNamed(
                                        RouteName.assetDetailPage,
                                        extra: [
                                          dataAsset.result!.data!.first,
                                          true,
                                          "0",
                                          0,
                                        ],
                                      )
                                      // --- TAMBAHKAN INI ---
                                      .then((_) {
                                        // Kode ini berjalan SETELAH AssetDetailPage di-pop
                                        log(
                                          "[LISTENER] Kembali dari AssetDetail. Melepas kunci.",
                                        );
                                        if (mounted) {
                                          setState(() => _isScanning = false);
                                        }
                                      });
                                  // --- AKHIR TAMBAHAN ---
                                } else {
                                  log(
                                    "[LISTENER] GAGAL (Data not found). Melepas kunci.",
                                  );
                                  showAppDialog(
                                    context,
                                    type: DialogType.error,
                                    message: "Data not found",
                                  );
                                  if (mounted)
                                    setState(() => _isScanning = false);
                                }
                              },
                              error: (errorMessage) {
                                log("[LISTENER] GAGAL (Error). Melepas kunci.");
                                showAppDialog(
                                  context,
                                  type: DialogType.error,
                                  message: errorMessage,
                                );
                                if (mounted)
                                  setState(() => _isScanning = false);
                              },
                            );
                          },
                          builder: (context, state) {
                            // Logika isLoading ini TETAP SAMA
                            final bool isLoading =
                                (state == const BarcodeState.loading()) ||
                                _isScanning;

                            log(
                              "[BUILDER] Membangun ulang. state: ${state.runtimeType}, _isScanning: $_isScanning, isLoading (gabungan): $isLoading",
                            );

                            return InkWell(
                              // --- REVISI UTAMA ADA DI SINI ---
                              onTap: () async {
                                // 1. Gerbang utama (TETAP SAMA)
                                if (isLoading) {
                                  log("[TAP] DIBLOKIR. isLoading: $isLoading");
                                  return;
                                }

                                try {
                                  // 2. Kunci tombol (TETAP SAMA)
                                  log(
                                    "[TAP] LOLOS. Mengunci tombol... (_isScanning = true)",
                                  );
                                  setState(() {
                                    _isScanning = true;
                                  });

                                  // 3. PANGGIL SCANNER BARU (mobile_scanner)
                                  // Ini menggantikan SimpleBarcodeScanner.scanBarcode
                                  final String?
                                  res = await Navigator.of(context).push<String>(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ScannerPage(), // Pastikan ScannerPage di-import
                                    ),
                                  );

                                  log("[TAP] Scanner ditutup. Hasil: $res");

                                  // res akan null jika user menekan back
                                  if (res != null && res.isNotEmpty) {
                                    // 4. SUKSES SCAN: Kirim event ke BLoC
                                    log(
                                      "[TAP] Scan sukses. Mengirim event ke BLoC.",
                                    );
                                    if (mounted) {
                                      context.read<BarcodeBloc>().add(
                                        BarcodeEvent.detailData(res),
                                      );
                                    }
                                    // Kunci TIDAK dilepas di sini. Listener yang akan mengaturnya.
                                  } else {
                                    // 5. DIBATALKAN (res == null): Rilis kunci
                                    log(
                                      "[TAP] Scan dibatalkan. Melepas kunci.",
                                    );
                                    if (mounted) {
                                      setState(() => _isScanning = false);
                                    }
                                  }
                                } catch (e) {
                                  // 6. ERROR NAVIGASI: Rilis kunci
                                  log(
                                    "[TAP] Error saat navigasi/scan: $e. Melepas kunci.",
                                  );
                                  if (mounted) {
                                    setState(() => _isScanning = false);
                                  }
                                }
                              },
                              // --- AKHIR REVISI onTap ---

                              // Tampilan UI (TETAP SAMA)
                              child: Center(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 80,
                                    vertical: 32,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    border: Border.all(
                                      color:
                                          kStroke, // Pastikan kStroke terdefinisi
                                      width: 6,
                                    ),
                                    gradient: RadialGradient(
                                      radius: 1.8,
                                      colors: [
                                        kPrimary, // Pastikan kPrimary terdefinisi
                                        Color.fromARGB(255, 214, 151, 138),
                                      ],
                                    ),
                                  ),
                                  child: isLoading
                                      ? Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/png/barcode.png",
                                            ),
                                            const SizedBox(height: 16),
                                            const CircularProgressIndicator(
                                              color: Colors.white,
                                            ),
                                          ],
                                        )
                                      : Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/png/barcode.png",
                                            ),
                                            const SizedBox(height: 16),
                                            const Text(
                                              "SCAN BARCODE",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
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
                        // --- MULAI BLOK BARCODE ---
                        // BlocConsumer<BarcodeBloc, BarcodeState>(
                        //   listener: (context, state) {
                        //     // Logika listener ini TETAP SAMA, sudah sempurna
                        //     state.maybeWhen(
                        //       orElse: () {},
                        //       successWithDataLocation: (data) {
                        //         LocationModel dataLocation = data;
                        //         if (dataLocation.result != null &&
                        //             dataLocation.result!.data != null &&
                        //             dataLocation.result!.data!.isNotEmpty) {
                        //           context.pushNamed(
                        //             RouteName.locationDetailPage,
                        //             extra: dataLocation.result!.data!.first,
                        //           );
                        //         } else {
                        //           showAppDialog(
                        //             context,
                        //             type: DialogType.error,
                        //             message: "Data not found",
                        //           );
                        //           if (mounted)
                        //             setState(() => _isScanning = false);
                        //         }
                        //       },
                        //       successWithDataAsset: (data) {
                        //         AssetModel dataAsset = data;
                        //         log("SUKSES");
                        //         if (dataAsset.result != null &&
                        //             dataAsset.result!.data != null &&
                        //             dataAsset.result!.data!.isNotEmpty) {
                        //           context.pushNamed(
                        //             RouteName.assetDetailPage,
                        //             extra: [
                        //               dataAsset.result!.data!.first,
                        //               true,
                        //               "0",
                        //               0,
                        //             ],
                        //           );
                        //         } else {
                        //           showAppDialog(
                        //             context,
                        //             type: DialogType.error,
                        //             message: "Data not found",
                        //           );
                        //           if (mounted)
                        //             setState(() => _isScanning = false);
                        //         }
                        //       },
                        //       error: (errorMessage) {
                        //         showAppDialog(
                        //           context,
                        //           type: DialogType.error,
                        //           message: errorMessage,
                        //         );
                        //         if (mounted)
                        //           setState(() => _isScanning = false);
                        //       },
                        //     );
                        //   },
                        //   builder: (context, state) {
                        //     // Logika isLoading ini TETAP SAMA
                        //     final bool isLoading =
                        //         (state == const BarcodeState.loading()) ||
                        //         _isScanning;

                        //     return InkWell(
                        //       // --- REVISI UTAMA ADA DI SINI ---
                        //       onTap: () async {
                        //         // 1. Gerbang utama (TETAP SAMA)
                        //         if (isLoading) {
                        //           log("[TAP] DIBLOKIR. isLoading: $isLoading");
                        //           return;
                        //         }

                        //         try {
                        //           // 2. Kunci tombol (TETAP SAMA)
                        //           log(
                        //             "[TAP] LOLOS. Mengunci tombol... (_isScanning = true)",
                        //           );
                        //           setState(() {
                        //             _isScanning = true;
                        //           });

                        //           // 3. PANGGIL SCANNER BARU (mobile_scanner)
                        //           // Ini menggantikan SimpleBarcodeScanner.scanBarcode
                        //           final String? res =
                        //               await Navigator.of(context).push<String>(
                        //                 MaterialPageRoute(
                        //                   builder: (context) =>
                        //                       const ScannerPage(),
                        //                 ),
                        //               );

                        //           log("[TAP] Scanner ditutup. Hasil: $res");

                        //           // res akan null jika user menekan back
                        //           if (res != null && res.isNotEmpty) {
                        //             // 4. SUKSES SCAN: Kirim event ke BLoC
                        //             log(
                        //               "[TAP] Scan sukses. Mengirim event ke BLoC.",
                        //             );
                        //             if (mounted) {
                        //               context.read<BarcodeBloc>().add(
                        //                 BarcodeEvent.detailData(res),
                        //               );
                        //             }
                        //           } else {
                        //             // 5. DIBATALKAN (res == null): Rilis kunci
                        //             log(
                        //               "[TAP] Scan dibatalkan. Melepas kunci.",
                        //             );
                        //             if (mounted) {
                        //               setState(() => _isScanning = false);
                        //             }
                        //           }
                        //         } catch (e) {
                        //           // 6. ERROR NAVIGASI: Rilis kunci
                        //           log(
                        //             "[TAP] Error saat navigasi/scan: $e. Melepas kunci.",
                        //           );
                        //           if (mounted) {
                        //             setState(() => _isScanning = false);
                        //           }
                        //         }
                        //       },
                        //       // --- AKHIR REVISI onTap ---

                        //       // Tampilan UI (TETAP SAMA)
                        //       child: Center(
                        //         child: Container(
                        //           padding: const EdgeInsets.symmetric(
                        //             horizontal: 80,
                        //             vertical: 32,
                        //           ),
                        //           decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(35),
                        //             border: Border.all(
                        //               color: kStroke,
                        //               width: 6,
                        //             ),
                        //             gradient: RadialGradient(
                        //               radius: 1.8,
                        //               colors: [
                        //                 kPrimary,
                        //                 Color.fromARGB(255, 214, 151, 138),
                        //               ],
                        //             ),
                        //           ),
                        //           child: isLoading
                        //               ? Column(
                        //                   mainAxisAlignment:
                        //                       MainAxisAlignment.center,
                        //                   children: [
                        //                     Image.asset(
                        //                       "assets/png/barcode.png",
                        //                     ),
                        //                     const SizedBox(height: 16),
                        //                     const CircularProgressIndicator(
                        //                       color: Colors.white,
                        //                     ),
                        //                   ],
                        //                 )
                        //               : Column(
                        //                   mainAxisAlignment:
                        //                       MainAxisAlignment.center,
                        //                   children: [
                        //                     Image.asset(
                        //                       "assets/png/barcode.png",
                        //                     ),
                        //                     const SizedBox(height: 16),
                        //                     const Text(
                        //                       "SCAN BARCODE",
                        //                       style: TextStyle(
                        //                         fontSize: 18,
                        //                         color: Colors.white,
                        //                         fontWeight: FontWeight.bold,
                        //                       ),
                        //                     ),
                        //                   ],
                        //                 ),
                        //         ),
                        //       ),
                        //     );
                        //   },
                        // ),

                        // --- AKHIR BLOK BARCODE ---
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
                                          _items[index]["product_code"] ??
                                              "Unknown Code",
                                          style: kJakartaBold,
                                        ),
                                        Text(
                                          _items[index]["product_name"] ??
                                              "Unknown Name",
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
                                                  _items[index]["location_name"] ??
                                                      "Unknown",
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
