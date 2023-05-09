// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoEntity _$$_TodoEntityFromJson(Map<String, dynamic> json) =>
    _$_TodoEntity(
      id: json['id'] as String,
      todo: json['todo'] as String,
      isDone: json['isDone'] as bool,
    );

Map<String, dynamic> _$$_TodoEntityToJson(_$_TodoEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'todo': instance.todo,
      'isDone': instance.isDone,
    };
