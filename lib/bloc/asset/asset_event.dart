part of 'asset_bloc.dart';

@freezed
class AssetEvent with _$AssetEvent {
  const factory AssetEvent.started() = _Started;
  const factory AssetEvent.scanDataHome(String name) = _ScanDataHome;
  const factory AssetEvent.scanData(String name) = _ScanData;
  const factory AssetEvent.getData(int start, Map<String, dynamic> data) =
      _GetData;
  const factory AssetEvent.getDataSingle(int id) = _GetDataSingle;
  const factory AssetEvent.postData(Map<String, dynamic> asset) = _PostData;
  const factory AssetEvent.postDataDuplicate(Map<String, dynamic> asset) =
      _PostDataDuplicate;
  const factory AssetEvent.putData(Map<String, dynamic> asset, int id) =
      _PutData;
  const factory AssetEvent.deleteData(int id) = _DeleteData;
  const factory AssetEvent.customData(Map<String, dynamic> asset) = _CustomData;
}
