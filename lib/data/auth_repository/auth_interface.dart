import 'package:dartz/dartz.dart';

import '../../domain/models/login_model/login_model.dart';
import '../../domain/models/profile_model/profile_model.dart';

abstract class AuthInterface {
  Future<Either<LoginModel, String>> login(Map data);
  Future<Either<ProfileModel, String>> profile(String token);
  // Future<Either<Map<String, dynamic>, String>> register(
  //     Map<String, dynamic> data);
}
