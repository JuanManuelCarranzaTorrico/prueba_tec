import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tec/presentation/providers/comment_provider.dart';
// import 'package:prueba_tec/config/menu/post_items.dart';
import 'package:prueba_tec/presentation/providers/post_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final postProvider = context.watch<PostProvider>();
    if(postProvider.isLoadingPosts){
      postProvider.getPosts();
    }
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: postProvider.isLoadingPosts ? const Center(child: CircularProgressIndicator()) : _HomeView(),
      floatingActionButton: ClipOval(
        child: FloatingActionButton(
          onPressed: () {
            context.push('/new-post');
          }, 
          child: const Icon(Icons.add , color: Colors.white,), 
          backgroundColor: colors.primary,
          
          ),
      ),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final postProvider = context.watch<PostProvider>();
    final commentProvider = context.watch<CommentProvider>();
    return ListView.builder(
      itemCount: postProvider.posts.length,
      itemBuilder: (context, index) {
        final menuItem = postProvider.posts[index];
        return GestureDetector(
          onTap: () {
            commentProvider.clearComments();
            commentProvider.setIsLoadingComments(true);
            commentProvider.setPostId(menuItem.id);
            context.push('/comments');
          },
          child: Card(    
            child: Row(
              children: [
                const SizedBox(width: 10),
                Column(
                  children: [
                    const SizedBox(height: 10),
                    CircleAvatar(child: Text('${menuItem.userId}')),
                    const SizedBox(height: 20,)
                  ],
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text(menuItem.title, style: Theme.of(context).textTheme.titleLarge, ),
                      Text(menuItem.body, style: Theme.of(context).textTheme.bodySmall, ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
        );
      },
    );
  }
}