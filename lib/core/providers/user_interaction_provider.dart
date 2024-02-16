import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_api/core/models/post_like_data.dart';

class LikePostNotifier extends StateNotifier<PostLikeModel> {
  LikePostNotifier(super.state);

  bool likePost(int postId) {
    state = PostLikeModel(
      postId: postId,
      isLiked: !state.isLiked,
    );

    return state.isLiked;
  }
}

final likePostProvider =
    StateNotifierProvider.family<LikePostNotifier, PostLikeModel, int>(
  (ref, postId) => LikePostNotifier(PostLikeModel(postId: postId)),
);
