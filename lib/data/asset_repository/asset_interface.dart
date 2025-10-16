import 'package:dartz/dartz.dart';

import '../../domain/models/asset_model/asset_model.dart';
import '../../domain/models/asset_model/datum.dart';

abstract class AssetInterface {
  Future<Either<bool, String>> assetMoving(
    String token,
    List<Map<String, dynamic>> asset,
  );
  Future<Either<AssetModel, String>> assetGet(String token, int start);
  Future<Either<AssetModel, String>> assetGetAll(String token);
  Future<Either<AssetModel, String>> assetGetSingle(String token, int id);
  Future<Either<int, String>> assetPost(
    String token,
    Map<String, dynamic> asset,
  );
  Future<Either<int, String>> assetPut(
    String token,
    Map<String, dynamic> asset,
    int id,
  );
  Future<Either<bool, String>> assetDelete(String token, int id);
  Future<List<Datum>> assetDropdown(String token);
}
