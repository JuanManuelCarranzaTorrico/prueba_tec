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
          Column(
            children: [
              const SizedBox(height: 10),
              Text(name),
              const SizedBox(height: 10),
              Text(body),
              const SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}
