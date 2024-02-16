import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_like_data.freezed.dart';
part 'post_like_data.g.dart';

@freezed
class PostLikeModel with _$PostLikeModel {
  const PostLikeModel._();
  const factory PostLikeModel({
    required int postId,
    @Default(false) bool isLiked,
  }) = _PostLikeModel;

  factory PostLikeModel.fromJson(Map<String, dynamic> data) =>
      _$PostLikeModelFromJson(data);
}
