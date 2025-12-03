import 'package:go_router/go_router.dart';

import '../../domain/models/asset_model/datum.dart' as asset_datum;
import '../../domain/models/location_model/datum.dart' as location_datum;
import '../screens/asset_detail_page/asset_detail_page.dart';
import '../screens/asset_edit_page/asset_edit_page.dart';
import '../screens/asset_input_page/asset_input_page.dart';
import '../screens/asset_page/asset_page.dart';
import '../screens/home_page/home_page.dart';
import '../screens/location_detail_page/location_detail_page.dart';
import '../screens/location_edit_page/location_edit_page.dart';
import '../screens/location_input_page/location_input_page.dart';
import '../screens/location_page/location_page.dart';
import '../screens/login_page/login_page.dart';
import '../screens/moving_page/moving_page.dart';
import '../screens/show_image_page/show_image_page.dart';
import '../screens/splash_page/splash_page.dart';
part 'route_name.dart';

class AppRouter {
  GoRouter get router => _goRouter;
  AppRouter();

  late final GoRouter _goRouter = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: RouteName.onboardingPage,
    routes: [
      GoRoute(
        path: '/onboardingPage',
        name: RouteName.onboardingPage,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: '/loginPage',
        name: RouteName.loginPage,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/homePage',
        name: RouteName.homePage,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/assetPage',
        name: RouteName.assetPage,
        builder: (context, state) =>
            AssetPage(kondisiParameter: state.extra as String?),
      ),
      GoRoute(
        path: '/assetInputPage',
        name: RouteName.assetInputPage,
        builder: (context, state) {
          return const AssetInputPage();
        },
      ),
      GoRoute(
        path: '/assetDetailPage',
        name: RouteName.assetDetailPage,
        builder: (context, state) {
          List dataExtra = state.extra as List;
          asset_datum.Datum? data = dataExtra[0] as asset_datum.Datum?;
          bool isRefresh = dataExtra[1];
          String? productCode = dataExtra[2];
          int duplicate = dataExtra[3];
          return AssetDetailPage(
            data: data,
            isRefresh: isRefresh,
            productCode: productCode!,
            countDuplicate: duplicate,
          );
        },
      ),
      GoRoute(
        path: '/showImagePage',
        name: RouteName.showImagePage,
        builder: (context, state) {
          String data = state.extra as String;
          return ShowLargeImageWithPhotoView(imageUrl: data);
        },
      ),
      GoRoute(
        path: '/assetEditPage',
        name: RouteName.assetEditPage,
        builder: (context, state) {
          asset_datum.Datum data = state.extra as asset_datum.Datum;
          return AssetEditPage(data: data);
        },
      ),
      GoRoute(
        path: '/locationPage',
        name: RouteName.locationPage,
        builder: (context, state) => const LocationPage(),
      ),
      GoRoute(
        path: '/locationInputPage',
        name: RouteName.locationInputPage,
        builder: (context, state) {
          return const LocationInputPage();
        },
      ),
      GoRoute(
        path: '/locationDetailPage',
        name: RouteName.locationDetailPage,
        builder: (context, state) {
          location_datum.Datum data = state.extra as location_datum.Datum;
          return LocationDetailPage(data: data);
        },
      ),
      GoRoute(
        path: '/locationEditPage',
        name: RouteName.locationEditPage,
        builder: (context, state) {
          location_datum.Datum data = state.extra as location_datum.Datum;
          return LocationEditPage(data: data);
        },
      ),
      GoRoute(
        path: '/movingPage',
        name: RouteName.movingPage,
        builder: (context, state) {
          return const MovingPage();
        },
      ),
    ],
  );
}
