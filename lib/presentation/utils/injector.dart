import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../bloc/asset/asset_bloc.dart';
import '../../bloc/auth/auth_bloc.dart';
import '../../bloc/barcode/barcode_bloc.dart';
import '../../bloc/location/location_bloc.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingletonAsync<SharedPreferences>(() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences;
  });

  locator.registerLazySingleton<AuthBloc>(() => AuthBloc());
  locator.registerLazySingleton<AssetBloc>(() => AssetBloc());
  locator.registerLazySingleton<BarcodeBloc>(() => BarcodeBloc());
  locator.registerLazySingleton<LocationBloc>(() => LocationBloc());
}
