// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_like_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostLikeModel _$PostLikeModelFromJson(Map<String, dynamic> json) {
  return _PostLikeModel.fromJson(json);
}

/// @nodoc
mixin _$PostLikeModel {
  int get postId => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostLikeModelCopyWith<PostLikeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostLikeModelCopyWith<$Res> {
  factory $PostLikeModelCopyWith(
          PostLikeModel value, $Res Function(PostLikeModel) then) =
      _$PostLikeModelCopyWithImpl<$Res, PostLikeModel>;
  @useResult
  $Res call({int postId, bool isLiked});
}

/// @nodoc
class _$PostLikeModelCopyWithImpl<$Res, $Val extends PostLikeModel>
    implements $PostLikeModelCopyWith<$Res> {
  _$PostLikeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? isLiked = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostLikeModelImplCopyWith<$Res>
    implements $PostLikeModelCopyWith<$Res> {
  factory _$$PostLikeModelImplCopyWith(
          _$PostLikeModelImpl value, $Res Function(_$PostLikeModelImpl) then) =
      __$$PostLikeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int postId, bool isLiked});
}

/// @nodoc
class __$$PostLikeModelImplCopyWithImpl<$Res>
    extends _$PostLikeModelCopyWithImpl<$Res, _$PostLikeModelImpl>
    implements _$$PostLikeModelImplCopyWith<$Res> {
  __$$PostLikeModelImplCopyWithImpl(
      _$PostLikeModelImpl _value, $Res Function(_$PostLikeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? isLiked = null,
  }) {
    return _then(_$PostLikeModelImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostLikeModelImpl extends _PostLikeModel {
  const _$PostLikeModelImpl({required this.postId, this.isLiked = false})
      : super._();

  factory _$PostLikeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostLikeModelImplFromJson(json);

  @override
  final int postId;
  @override
  @JsonKey()
  final bool isLiked;

  @override
  String toString() {
    return 'PostLikeModel(postId: $postId, isLiked: $isLiked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostLikeModelImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, postId, isLiked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostLikeModelImplCopyWith<_$PostLikeModelImpl> get copyWith =>
      __$$PostLikeModelImplCopyWithImpl<_$PostLikeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostLikeModelImplToJson(
      this,
    );
  }
}

abstract class _PostLikeModel extends PostLikeModel {
  const factory _PostLikeModel(
      {required final int postId, final bool isLiked}) = _$PostLikeModelImpl;
  const _PostLikeModel._() : super._();

  factory _PostLikeModel.fromJson(Map<String, dynamic> json) =
      _$PostLikeModelImpl.fromJson;

  @override
  int get postId;
  @override
  bool get isLiked;
  @override
  @JsonKey(ignore: true)
  _$$PostLikeModelImplCopyWith<_$PostLikeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
