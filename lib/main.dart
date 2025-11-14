import 'dart:io';
import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:toda/firebase_options.dart';

import 'bloc/asset/asset_bloc.dart';
import 'bloc/auth/auth_bloc.dart';
import 'bloc/barcode/barcode_bloc.dart';
import 'bloc/location/location_bloc.dart';
import 'presentation/router/app_route.dart';
import 'presentation/utils/injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  await setupLocator();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  runApp(
    MultiProvider(
      providers: [Provider<AppRouter>(create: (_) => AppRouter())],
      child: const MyApp(),
    ),
  );
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    ); // to re-show bars

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appRouter = Provider.of<AppRouter>(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              locator<AuthBloc>()..add(const AuthEvent.checkSignInStatus()),
        ),
        BlocProvider(create: (context) => locator<AssetBloc>()),
        BlocProvider(create: (context) => locator<LocationBloc>()),
        BlocProvider(create: (context) => locator<BarcodeBloc>()),
      ],
      child: ResponsiveSizer(
        builder: (context, orietation, screeenType) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'TODA Asset Management',
            routerConfig: appRouter.router,
          );
        },
      ),
    );
  }
}
