// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentsModelImpl _$$CommentsModelImplFromJson(Map<String, dynamic> json) =>
    _$CommentsModelImpl(
      id: json['id'] as int,
      postId: json['postId'] as int,
      name: json['name'] as String,
      body: json['body'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$CommentsModelImplToJson(_$CommentsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'name': instance.name,
      'body': instance.body,
      'email': instance.email,
    };
