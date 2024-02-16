// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_like_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostLikeModelImpl _$$PostLikeModelImplFromJson(Map<String, dynamic> json) =>
    _$PostLikeModelImpl(
      postId: json['postId'] as int,
      isLiked: json['isLiked'] as bool? ?? false,
    );

Map<String, dynamic> _$$PostLikeModelImplToJson(_$PostLikeModelImpl instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'isLiked': instance.isLiked,
    };
