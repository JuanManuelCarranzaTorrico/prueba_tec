import 'package:flutter/material.dart';
import 'package:prueba_tec/presentation/widgets/comments/comment_widget.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comments'),
        backgroundColor: colors.primary,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            CommentWidget(name: "Name", body: "Body")
          ],
        ),
      )
    );
  }
}
