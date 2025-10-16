import '../../domain/models/master_data_model/datum.dart';

abstract class MasterInterface {
  Future<List<Datum>> getJob(String token);
  Future<List<Datum>> getCategory(String token);
}
