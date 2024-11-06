import 'package:flutter/material.dart';

class NewPost extends StatelessWidget {
  const NewPost({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return  Scaffold(
      appBar: AppBar(
        title: const Text('New Post'),
        backgroundColor: colors.primary,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Placeholder()
    );
  }
}