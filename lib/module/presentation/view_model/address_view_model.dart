import 'package:flutter/material.dart';

import '../../domain/entity/address_entity.dart';
import '../../domain/use_case/app_use_case.dart';
import '../../external/provider/app_provider.dart';
import 'general_state.dart';

class AddressViewModel extends AppChangeNotifier {
  final AppUseCase useCase;
  List<AddressEntity>? addressList;
  final inputController = TextEditingController();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  AddressViewModel({required this.useCase});

  Future<GeneralState> getAll() async {
    try {
      isLoading = true;

      final state = await useCase.getAddress();

      return state.fold(
        (l) => const GeneralState.clientError(),
        (data) {
          addressList = data;

          return const GeneralState.success();
        },
      );
    } catch (e) {
      return const GeneralState.clientError();
    } finally {
      isLoading = false;
    }
  }

  Future<GeneralState> upsertAddress(AddressEntity data) async {
    try {
      isLoading = true;

      String newId = "";
      if (data.id != null && data.id!.isNotEmpty) {
        newId = data.id!;
      } else {
        newId = DateTime.now().toIso8601String();
      }

      final state = await useCase.upsertAddress(AddressEntity.fromJson({
        "id": newId,
        ...data.toJson(),
      }));

      return state.fold(
        (l) => const GeneralState.clientError(),
        (r) => const GeneralState.success(),
      );
    } catch (e) {
      return const GeneralState.clientError();
    } finally {
      isLoading = false;
    }
  }

  Future<GeneralState> deleteAddress(AddressEntity data) async {
    try {
      isLoading = true;

      final state = await useCase.deleteAddress(data);

      return state.fold(
        (l) => const GeneralState.clientError(),
        (r) => const GeneralState.success(),
      );
    } catch (e) {
      return const GeneralState.clientError();
    } finally {
      isLoading = false;
    }
  }
}
