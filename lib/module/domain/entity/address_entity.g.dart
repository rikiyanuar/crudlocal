// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressEntity _$$_AddressEntityFromJson(Map<String, dynamic> json) =>
    _$_AddressEntity(
      id: json['id'] as String?,
      kategori: json['kategori'] as String?,
      provinsi: json['provinsi'] as String?,
      kecamatan: json['kecamatan'] as String?,
      kodePos: json['kodePos'] as String?,
      rt: json['rt'] as String?,
      rw: json['rw'] as String?,
      negara: json['negara'] as String?,
      kota: json['kota'] as String?,
      kelurahan: json['kelurahan'] as String?,
      namaJalan: json['namaJalan'] as String?,
      telepon: json['telepon'] as String?,
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$$_AddressEntityToJson(_$_AddressEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kategori': instance.kategori,
      'provinsi': instance.provinsi,
      'kecamatan': instance.kecamatan,
      'kodePos': instance.kodePos,
      'rt': instance.rt,
      'rw': instance.rw,
      'negara': instance.negara,
      'kota': instance.kota,
      'kelurahan': instance.kelurahan,
      'namaJalan': instance.namaJalan,
      'telepon': instance.telepon,
      'isActive': instance.isActive,
    };
