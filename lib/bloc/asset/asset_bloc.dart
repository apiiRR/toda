import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../data/asset_repository/asset_services.dart';
import '../../data/method.dart';
import '../../domain/models/asset_model/asset_model.dart';

part 'asset_event.dart';
part 'asset_state.dart';
part 'asset_bloc.freezed.dart';

class AssetBloc extends Bloc<AssetEvent, AssetState> {
  AssetServices service = AssetServices();

  Future<String> convertImage(XFile image) async {
    String base64String = "";
    File? imageFile;
    imageFile = File(image.path);

    Uint8List imageBytes = await imageFile.readAsBytes();
    base64String = base64.encode(imageBytes);
    return base64String;
  }

  AssetBloc() : super(const _Initial()) {
    on<_ScanData>((event, emit) async {
      try {
        emit(const AssetState.loading());
        final Map<String, dynamic> dataUser = await getDetailUser();

        final data = await service.assetGet(
          dataUser["token"],
          0,
          data: {"name": event.name},
        );
        data.fold(
          (l) {
            emit(AssetState.successWithData(l));
          },
          (r) {
            throw (r);
          },
        );
      } catch (e) {
        emit(AssetState.error(e.toString()));
      }
    });
    on<_GetData>((event, emit) async {
      try {
        emit(const AssetState.loading());
        final Map<String, dynamic> dataUser = await getDetailUser();

        final data = await service.assetGet(
          dataUser["token"],
          event.start,
          data: event.data,
        );
        data.fold(
          (l) {
            emit(AssetState.successWithData(l));
          },
          (r) {
            throw (r);
          },
        );
      } catch (e) {
        emit(AssetState.error(e.toString()));
      }
    });
    on<_GetDataSingle>((event, emit) async {
      try {
        emit(const AssetState.loading());
        final Map<String, dynamic> dataUser = await getDetailUser();

        final data = await service.assetGetSingle(dataUser["token"], event.id);
        data.fold(
          (l) {
            emit(AssetState.successWithData(l));
          },
          (r) {
            throw (r);
          },
        );
      } catch (e) {
        emit(AssetState.error(e.toString()));
      }
    });
    on<_PostData>((event, emit) async {
      try {
        emit(const AssetState.loading());
        final Map<String, dynamic> dataUser = await getDetailUser();
        late int id;
        Map<String, dynamic> dataInput = Map.from(event.asset);

        if (dataInput["image"] != null && dataInput["image"].isNotEmpty) {
          String image = await convertImage(dataInput["image"][0]);
          dataInput["image"] = image;
        }

        log(dataInput.toString());

        final post = await service.assetPost(dataUser["token"], dataInput);
        post.fold(
          (l) {
            id = l;
          },
          (r) {
            throw (r);
          },
        );

        final data = await service.assetGetSingle(dataUser["token"], id);
        data.fold(
          (l) {
            emit(AssetState.successWithData(l));
            emit(const AssetState.success("Data saved successfully"));
          },
          (r) {
            throw (r);
          },
        );
      } catch (e) {
        emit(AssetState.error(e.toString()));
      }
    });

    on<_PostDataDuplicate>((event, emit) async {
      try {
        emit(const AssetState.loading());
        final Map<String, dynamic> dataUser = await getDetailUser();
        late int id;
        Map<String, dynamic> dataInput = Map.from(event.asset);

        final post = await service.assetPost(dataUser["token"], dataInput);
        post.fold(
          (l) {
            id = l;
          },
          (r) {
            throw (r);
          },
        );

        final data = await service.assetGetSingle(dataUser["token"], id);
        data.fold(
          (l) {
            emit(AssetState.successDuplicate(l));
          },
          (r) {
            throw (r);
          },
        );
      } catch (e) {
        emit(AssetState.error(e.toString()));
      }
    });
    on<_PutData>((event, emit) async {
      try {
        emit(const AssetState.loading());
        final Map<String, dynamic> dataUser = await getDetailUser();
        late int id;

        Map<String, dynamic> dataInput = Map.from(event.asset);

        if (dataInput["image"] != null && dataInput["image"].isNotEmpty) {
          String image = await convertImage(dataInput["image"][0]);
          dataInput["image"] = image;
        }

        final put = await service.assetPut(
          dataUser["token"],
          dataInput,
          event.id,
        );
        put.fold(
          (l) {
            id = l;
          },
          (r) {
            throw (r);
          },
        );

        final data = await service.assetGetSingle(dataUser["token"], id);
        data.fold(
          (l) {
            // emit(AssetState.successWithData(l));
            emit(const AssetState.success("Data changed successfully"));
          },
          (r) {
            throw (r);
          },
        );
      } catch (e) {
        emit(AssetState.error(e.toString()));
      }
    });
    on<_DeleteData>((event, emit) async {
      try {
        emit(const AssetState.loading());
        final Map<String, dynamic> dataUser = await getDetailUser();

        final data = await service.assetDelete(dataUser["token"], event.id);
        data.fold(
          (l) {
            emit(const AssetState.success("Data deleted successfully"));
          },
          (r) {
            throw (r);
          },
        );
      } catch (e) {
        emit(AssetState.error(e.toString()));
      }
    });
    on<_CustomData>((event, emit) async {
      try {
        emit(const AssetState.loading());
        final Map<String, dynamic> dataUser = await getDetailUser();

        final data = await service.assetGetAll(
          dataUser["token"],
          data: event.asset,
        );
        data.fold(
          (l) {
            emit(AssetState.successWithData(l));
          },
          (r) {
            throw (r);
          },
        );
      } catch (e) {
        emit(AssetState.error(e.toString()));
      }
    });
  }
}
