import 'package:freezed_annotation/freezed_annotation.dart';

part 'comments_model.freezed.dart';
part 'comments_model.g.dart';

@freezed
class CommentsModel with _$CommentsModel {
  const CommentsModel._();
  const factory CommentsModel({
    required int id,
    required int postId,
    required String name,
    required String body,
    required String email,
  }) = _CommentsModel;

  factory CommentsModel.fromJson(Map<String, dynamic> data) =>
      _$CommentsModelFromJson(data);
}
