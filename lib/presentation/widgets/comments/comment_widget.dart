import 'package:flutter/material.dart';

class CommentWidget extends StatelessWidget {
  final String name;
  final String body;
  const CommentWidget({super.key, required this.name, required this.body});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Text(name),
                const SizedBox(height: 5),
                Divider(color: Theme.of(context).colorScheme.primary,),
                const SizedBox(height: 5),
                Text(body),
                const SizedBox(height: 10),
              ],
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
