import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_api/core/models/post_model.dart';
import 'package:flutter_riverpod_api/core/providers/api_provider.dart';
import 'package:flutter_riverpod_api/core/providers/user_interaction_provider.dart';
import 'package:gap/gap.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 22,
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
                                fontSize: 14,
                              ),
                            ),
                            const Gap(2),
                            Text(
                              '@${data.username.toLowerCase()}',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
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
                fontSize: 14,
              ),
            ),
            const Gap(8),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl:
                    'https://picsum.photos/1920/1080?random=${postModel.id}',
                fit: BoxFit.cover,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.24,
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
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.insert_comment_rounded),
                ),
                IconButton(
                  onPressed: () {},
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
