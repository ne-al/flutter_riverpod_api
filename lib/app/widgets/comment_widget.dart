import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_api/core/models/comments_model.dart';
import 'package:flutter_riverpod_api/core/providers/api_provider.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class CommentWidget extends ConsumerWidget {
  final int postId;
  const CommentWidget({super.key, required this.postId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(fetchPostComments(postId)).when(
          data: (data) {
            WoltModalSheetPage commentPage() => WoltModalSheetPage(
                  isTopBarLayerAlwaysVisible: true,
                  pageTitle: Text(
                    'Comments',
                    style: GoogleFonts.oswald(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      CommentsModel commentsModel =
                          CommentsModel.fromJson(data[index]);

                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                commentsModel.email,
                                style: GoogleFonts.lato(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.6,
                                ),
                              ),
                              const Gap(4),
                              Text(
                                commentsModel.body,
                                textAlign: TextAlign.left,
                                style: GoogleFonts.lato(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
            return IconButton(
              onPressed: () => WoltModalSheet.show<void>(
                context: context,
                useSafeArea: true,
                pageListBuilder: (context) {
                  return [
                    commentPage(),
                  ];
                },
              ),
              icon: const Icon(Icons.message_rounded),
            );
          },
          error: (error, stackTrace) => Center(
            child: Text('$error'),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        );
  }
}
