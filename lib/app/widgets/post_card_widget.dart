import 'package:flutter/material.dart';
import 'package:flutter_riverpod_api/core/models/post_model.dart';
import 'package:flutter_riverpod_api/core/models/user_model.dart';
import 'package:gap/gap.dart';

class PostCardWidget extends StatelessWidget {
  final UserModel? userModel;
  final PostModel postModel;
  const PostCardWidget({
    super.key,
    this.userModel,
    required this.postModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userModel?.name ?? 'username',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.2,
                  ),
            ),
            const Gap(12),
            Text(postModel.title),
            const Gap(4),
            Text(postModel.body),
          ],
        ),
      ),
    );
  }
}
