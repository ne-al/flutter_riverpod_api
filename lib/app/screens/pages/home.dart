import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_api/app/widgets/post_card_widget.dart';
import 'package:flutter_riverpod_api/core/models/post_model.dart';
import 'package:flutter_riverpod_api/core/providers/api_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () {
          return ref.refresh(fetchAllPost.future);
        },
        child: SafeArea(
          child: ref.watch(fetchAllPost).when(
            data: (data) {
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  PostModel modelData = PostModel.fromJson(data[index]);
                  return PostCardWidget(
                    postModel: modelData,
                  );
                },
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
      ),
    );
  }
}
