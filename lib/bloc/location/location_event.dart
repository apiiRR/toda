part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.started() = _Started;
  const factory LocationEvent.scanData(String name) = _ScanData;
  const factory LocationEvent.getData() = _GetData;
  const factory LocationEvent.getDataSingle(int id) = _GetDataSingle;
  const factory LocationEvent.postData(Map<String, dynamic> location) =
      _PostData;
  const factory LocationEvent.putData(Map<String, dynamic> location, int id) =
      _PutData;
  const factory LocationEvent.deleteData(int id) = _DeleteData;
}
