import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

class PostPopover extends StatelessWidget {
  const PostPopover({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showPopover(
          context: context,
          direction: PopoverDirection.bottom,
          backgroundColor: Theme.of(context).colorScheme.surface,
          bodyBuilder: (context) {
            return SizedBox(
              height: 100,
              width: 150,
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Share'),
                  ),
                ],
              ),
            );
          },
        );
      },
      icon: const Icon(Icons.more_vert_rounded),
    );
  }
}
