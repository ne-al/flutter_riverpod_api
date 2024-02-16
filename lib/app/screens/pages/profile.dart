import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_api/core/providers/api_provider.dart';
import 'package:gap/gap.dart';

class ProfilePage extends ConsumerWidget {
  final int userId;
  const ProfilePage({
    super.key,
    required this.userId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: ref.watch(fetchUserProvider(userId)).when(
          data: (data) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(data.name),
                  Text(data.username),
                  Text(data.email),
                  Text(data.phone),
                  Text(data.website),
                  const Gap(20),
                  const Text('Company'),
                  const Gap(8),
                  Text(data.company.name),
                  Text(data.company.catchPhrase),
                  Text(data.company.bs),
                ],
              ),
            );
          },
          error: (error, stackTrace) {
            return Center(
              child: Text(error.toString()),
            );
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          },
        ),
      ),
    );
  }
}
