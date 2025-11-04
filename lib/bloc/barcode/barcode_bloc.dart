import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/asset_repository/asset_services.dart';
import '../../data/location_repository/location_services.dart';
import '../../data/method.dart';
import '../../domain/models/asset_model/asset_model.dart';
import '../../domain/models/location_model/location_model.dart';

part 'barcode_event.dart';
part 'barcode_state.dart';
part 'barcode_bloc.freezed.dart';

class BarcodeBloc extends Bloc<BarcodeEvent, BarcodeState> {
  AssetServices assetService = AssetServices();
  LocationServices locationService = LocationServices();

  BarcodeBloc() : super(const _Initial()) {
    on<_MovingData>((event, emit) async {
      try {
        emit(const BarcodeState.loading());
        final Map<String, dynamic> dataUser = await getDetailUser();

        final data = await assetService.assetMoving(
          dataUser["token"],
          event.asset,
        );
        data.fold(
          (l) {
            emit(const BarcodeState.success("Data transferred successfully"));
          },
          (r) {
            throw (r);
          },
        );
      } catch (e) {
        emit(BarcodeState.error(e.toString()));
      }
    });
    on<_DetailData>((event, emit) async {
      try {
        emit(const BarcodeState.loading());
        final Map<String, dynamic> dataUser = await getDetailUser();

        final dataAsset = await assetService.assetGet(
          dataUser["token"],
          0,
          data: {"name": event.code},
        );

        dataAsset.fold(
          (l) {
            if (l.result!.data!.isNotEmpty) {
                            emit(BarcodeState.successWithDataAsset(l));
            } else {
              throw ("Asset not found");
            }
          },
          (r) {
            throw (r);
          },
        );

      } catch (e) {
        emit(BarcodeState.error(e.toString()));
      }
    });
  }
}
