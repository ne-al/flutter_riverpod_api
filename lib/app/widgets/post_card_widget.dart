import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_api/app/widgets/comment_widget.dart';
import 'package:flutter_riverpod_api/app/widgets/post_popover.dart';
import 'package:flutter_riverpod_api/core/models/post_model.dart';
import 'package:flutter_riverpod_api/core/providers/api_provider.dart';
import 'package:flutter_riverpod_api/core/providers/user_interaction_provider.dart';
import 'package:gap/gap.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class PostCardWidget extends ConsumerWidget {
  final PostModel postModel;
  const PostCardWidget({
    super.key,
    required this.postModel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLiked = ref.watch(likePostProvider(postModel.id));
    double height = MediaQuery.of(context).size.height;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Consumer(
              builder: (context, ref, child) {
                return ref.watch(fetchUserProvider(postModel.userId)).when(
                  data: (data) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            GoRouter.of(context).go(
                              '/profile',
                              extra: {'userId': postModel.userId},
                            );
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: !kIsWeb ? 22 : 32,
                                backgroundImage: CachedNetworkImageProvider(
                                    'https://picsum.photos/seed/userUid${data.id}/1920/1080'),
                              ),
                              const Gap(6),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data.name,
                                    style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.5,
                                      fontSize: !kIsWeb ? 14 : 20,
                                    ),
                                  ),
                                  const Gap(2),
                                  Text(
                                    '@${data.username.toLowerCase()}',
                                    style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.5,
                                      fontSize: !kIsWeb ? 11 : 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const PostPopover(),
                      ],
                    );
                  },
                  error: (error, stackTrace) {
                    return Text('$error');
                  },
                  loading: () {
                    return const Text('');
                  },
                );
              },
            ),
            const Gap(8),
            Text(
              postModel.title,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w400,
                letterSpacing: 0.5,
                fontSize: !kIsWeb ? 14 : 18,
              ),
            ),
            const Gap(8),
            GestureDetector(
              onDoubleTap: () {
                ref.read(likePostProvider(postModel.id).notifier).likePost(
                      postModel.id,
                    );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://picsum.photos/1920/1080?random=${postModel.id}',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: kIsWeb ? height * 0.75 : height * 0.35,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    ref
                        .read(likePostProvider(postModel.id).notifier)
                        .likePost(postModel.id);
                  },
                  icon: isLiked.isLiked != true
                      ? const Icon(Icons.favorite_border_rounded)
                      : const Icon(
                          Icons.favorite_rounded,
                          color: Colors.red,
                        ),
                ),
                CommentWidget(
                  postId: postModel.id,
                ),
                IconButton(
                  onPressed: () {
                    CachedNetworkImage.evictFromCache(
                        'https://picsum.photos/1920/1080?random=${postModel.id}');
                  },
                  icon: const Icon(Icons.share_rounded),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bar_chart),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
