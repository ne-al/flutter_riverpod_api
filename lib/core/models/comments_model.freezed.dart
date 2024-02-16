// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentsModel _$CommentsModelFromJson(Map<String, dynamic> json) {
  return _CommentsModel.fromJson(json);
}

/// @nodoc
mixin _$CommentsModel {
  int get id => throw _privateConstructorUsedError;
  int get postId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentsModelCopyWith<CommentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsModelCopyWith<$Res> {
  factory $CommentsModelCopyWith(
          CommentsModel value, $Res Function(CommentsModel) then) =
      _$CommentsModelCopyWithImpl<$Res, CommentsModel>;
  @useResult
  $Res call({int id, int postId, String name, String body, String email});
}

/// @nodoc
class _$CommentsModelCopyWithImpl<$Res, $Val extends CommentsModel>
    implements $CommentsModelCopyWith<$Res> {
  _$CommentsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? name = null,
    Object? body = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentsModelImplCopyWith<$Res>
    implements $CommentsModelCopyWith<$Res> {
  factory _$$CommentsModelImplCopyWith(
          _$CommentsModelImpl value, $Res Function(_$CommentsModelImpl) then) =
      __$$CommentsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int postId, String name, String body, String email});
}

/// @nodoc
class __$$CommentsModelImplCopyWithImpl<$Res>
    extends _$CommentsModelCopyWithImpl<$Res, _$CommentsModelImpl>
    implements _$$CommentsModelImplCopyWith<$Res> {
  __$$CommentsModelImplCopyWithImpl(
      _$CommentsModelImpl _value, $Res Function(_$CommentsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? name = null,
    Object? body = null,
    Object? email = null,
  }) {
    return _then(_$CommentsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsModelImpl extends _CommentsModel {
  const _$CommentsModelImpl(
      {required this.id,
      required this.postId,
      required this.name,
      required this.body,
      required this.email})
      : super._();

  factory _$CommentsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsModelImplFromJson(json);

  @override
  final int id;
  @override
  final int postId;
  @override
  final String name;
  @override
  final String body;
  @override
  final String email;

  @override
  String toString() {
    return 'CommentsModel(id: $id, postId: $postId, name: $name, body: $body, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, postId, name, body, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsModelImplCopyWith<_$CommentsModelImpl> get copyWith =>
      __$$CommentsModelImplCopyWithImpl<_$CommentsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsModelImplToJson(
      this,
    );
  }
}

abstract class _CommentsModel extends CommentsModel {
  const factory _CommentsModel(
      {required final int id,
      required final int postId,
      required final String name,
      required final String body,
      required final String email}) = _$CommentsModelImpl;
  const _CommentsModel._() : super._();

  factory _CommentsModel.fromJson(Map<String, dynamic> json) =
      _$CommentsModelImpl.fromJson;

  @override
  int get id;
  @override
  int get postId;
  @override
  String get name;
  @override
  String get body;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$CommentsModelImplCopyWith<_$CommentsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
