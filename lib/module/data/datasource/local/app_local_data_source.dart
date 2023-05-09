import 'dart:convert';

import '../../../domain/entity/address_entity.dart';
import '../../../external/constant/app_constant.dart';
import '../../../external/encryption/aes.dart';
import '../../../external/libraries/libraries.dart';

abstract class AppLocalDataSource {
  Future<List<AddressEntity>> getAddress();

  Future<bool> upsertAddress(AddressEntity params);

  Future<bool> deleteAddress(AddressEntity params);
}

class AppLocalDataSourceImpl extends AppLocalDataSource {
  @override
  Future<List<AddressEntity>> getAddress() async {
    final data = json.decode(await _load());
    final result =
        List<AddressEntity>.from(data.map((x) => AddressEntity.fromJson(x)));

    return result;
  }

  @override
  Future<bool> upsertAddress(AddressEntity params) async {
    final list = await getAddress();
    int index = list.indexWhere((el) => el.id == params.id);
    if (index < 0) {
      /// Add new address when data not found
      list.add(params);

      return await _save(list);
    } else {
      /// Update selected
      final newValue = AddressEntity(
        id: params.id,
        kategori: params.kategori,
        provinsi: params.provinsi,
        kecamatan: params.kecamatan,
        kodePos: params.kodePos,
        rt: params.rt,
        rw: params.rw,
        negara: params.negara,
        kota: params.kota,
        kelurahan: params.kelurahan,
        namaJalan: params.namaJalan,
        telepon: params.telepon,
        isActive: params.isActive,
      );

      /// Replace with new value
      list.replaceRange(index, index + 1, [newValue]);

      return await _save(list);
    }
  }

  @override
  Future<bool> deleteAddress(AddressEntity params) async {
    final list = await getAddress();
    int index = list.indexWhere((el) => el.id == params.id);
    if (index == -1) return true;
    list.removeAt(index);

    return _save(list);
  }

  Future<bool> _save(List<AddressEntity> order) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    try {
      String base64 = AesEncryption.encryptData(json.encode(order));
      sharedPreferences.setString(AppConstant.prefsAddress, base64);

      return true;
    } catch (e) {
      return false;
    }
  }

  _load() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString(AppConstant.prefsAddress) == null ||
        sharedPreferences.getString(AppConstant.prefsAddress)!.isEmpty) {
      return "[]";
    }

    String base64 = sharedPreferences.getString(AppConstant.prefsAddress)!;
    String string = AesEncryption.decryptData(base64);

    return string;
  }
}
