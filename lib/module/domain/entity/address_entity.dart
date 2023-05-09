// ignore_for_file: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_entity.freezed.dart';
part 'address_entity.g.dart';

@freezed
class AddressEntity with _$AddressEntity {
  const factory AddressEntity({
    String? id,
    String? kategori,
    String? provinsi,
    String? kecamatan,
    String? kodePos,
    String? rt,
    String? rw,
    String? negara,
    String? kota,
    String? kelurahan,
    String? namaJalan,
    String? telepon,
    bool? isActive,
  }) = _AddressEntity;

  factory AddressEntity.fromJson(Map<String, dynamic> json) =>
      _$AddressEntityFromJson(json);
}
