import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/location_repository/location_services.dart';
import '../../data/method.dart';
import '../../domain/models/location_model/location_model.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationServices service = LocationServices();

  LocationBloc() : super(const _Initial()) {
    on<_ScanData>((event, emit) async {
      try {
        emit(const LocationState.loading());
        final Map<String, dynamic> dataUser = await getDetailUser();

        final data = await service.locationGet(dataUser["token"], data: {
          "code": event.name,
        });
        data.fold((l) {
          emit(LocationState.successWithData(l));
        }, (r) {
          throw (r);
        });
      } catch (e) {
        emit(LocationState.error(e.toString()));
      }
    });
    on<_GetData>((event, emit) async {
      try {
        emit(const LocationState.loading());
        final Map<String, dynamic> dataUser = await getDetailUser();

        final data = await service.locationGet(dataUser["token"]);
        data.fold((l) {
          emit(LocationState.successWithData(l));
        }, (r) {
          throw (r);
        });
      } catch (e) {
        emit(LocationState.error(e.toString()));
      }
    });
    on<_GetDataSingle>((event, emit) async {
      try {
        emit(const LocationState.loading());
        final Map<String, dynamic> dataUser = await getDetailUser();

        final data =
            await service.locationGetSingle(dataUser["token"], event.id);
        data.fold((l) {
          emit(LocationState.successWithData(l));
        }, (r) {
          throw (r);
        });
      } catch (e) {
        emit(LocationState.error(e.toString()));
      }
    });
    on<_PostData>((event, emit) async {
      try {
        emit(const LocationState.loading());
        final Map<String, dynamic> dataUser = await getDetailUser();
        late int id;

        final post =
            await service.locationPost(dataUser["token"], event.location);
        post.fold((l) {
          id = l;
        }, (r) {
          throw (r);
        });

        final data = await service.locationGetSingle(dataUser["token"], id);
        data.fold((l) {
          emit(LocationState.successWithData(l));
          emit(const LocationState.success("Data saved successfully"));
        }, (r) {
          throw (r);
        });
      } catch (e) {
        emit(LocationState.error(e.toString()));
      }
    });
    on<_PutData>((event, emit) async {
      try {
        emit(const LocationState.loading());
        final Map<String, dynamic> dataUser = await getDetailUser();
        late int id;

        final put = await service.locationPut(
            dataUser["token"], event.location, event.id);
        put.fold((l) {
          id = l;
        }, (r) {
          throw (r);
        });

        final data = await service.locationGetSingle(dataUser["token"], id);
        data.fold((l) {
          emit(const LocationState.success("Data changed successfully"));
        }, (r) {
          throw (r);
        });
      } catch (e) {
        emit(LocationState.error(e.toString()));
      }
    });
    on<_DeleteData>((event, emit) async {
      try {
        emit(const LocationState.loading());
        final Map<String, dynamic> dataUser = await getDetailUser();

        final data = await service.locationDelete(dataUser["token"], event.id);
        data.fold((l) {
          emit(const LocationState.success("Data deleted successfully"));
        }, (r) {
          throw (r);
        });
      } catch (e) {
        emit(LocationState.error(e.toString()));
      }
    });
  }
}
