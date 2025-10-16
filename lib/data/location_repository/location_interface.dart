import '../../domain/models/location_model/datum.dart';
import '../../domain/models/location_model/location_model.dart';
import 'package:dartz/dartz.dart';

abstract class LocationInterface {
  Future<Either<LocationModel, String>> locationGet(String token);
  Future<Either<LocationModel, String>> locationGetSingle(String token, int id);
  Future<Either<int, String>> locationPost(
    String token,
    Map<String, dynamic> location,
  );
  Future<Either<int, String>> locationPut(
    String token,
    Map<String, dynamic> location,
    int id,
  );
  Future<Either<bool, String>> locationDelete(String token, int id);
  Future<List<Datum>> locationDropdown(String token);
}
