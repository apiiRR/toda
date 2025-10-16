part of 'barcode_bloc.dart';

@freezed
class BarcodeEvent with _$BarcodeEvent {
  const factory BarcodeEvent.started() = _Started;
  const factory BarcodeEvent.movingData(List<Map<String, dynamic>> asset) =
      _MovingData;
  const factory BarcodeEvent.detailData(String code) = _DetailData;
}
