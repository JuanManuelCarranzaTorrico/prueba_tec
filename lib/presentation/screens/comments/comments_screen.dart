import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tec/presentation/providers/comment_provider.dart';
import 'package:prueba_tec/presentation/widgets/comments/comment_widget.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final commentProvider = context.watch<CommentProvider>();
    final colors = Theme.of(context).colorScheme;
    if(commentProvider.isLoadingComments){
      commentProvider.getComments();
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comments'),
        backgroundColor: colors.primary,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: commentProvider.isLoadingComments ? const Center(child: CircularProgressIndicator()) : Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: commentProvider.comments.length,
          itemBuilder: (context, index) {
            final comment = commentProvider.comments[index];
            return CommentWidget(name: comment.name, body: comment.body);
          },
        ),
      )
    );
  }
}
