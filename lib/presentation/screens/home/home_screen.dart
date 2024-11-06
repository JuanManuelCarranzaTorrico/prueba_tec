import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prueba_tec/config/menu/post_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: _HomeView(),
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
    return ListView.builder(
      itemCount: postItems.length,
      itemBuilder: (context, index) {
        final menuItem = postItems[index];
        return GestureDetector(
          onTap: () {
            context.push('/comments');
          },
          child: Card(    
            child: Row(
              children: [
                const SizedBox(width: 10),
                Column(
                  children: [
                    const SizedBox(height: 10),
                    CircleAvatar(child: Text('${menuItem.id}')),
                    const SizedBox(height: 20,)
                  ],
                ),
                const SizedBox(width: 15),
                Column(
                  children: [
                    Text(menuItem.title, style: Theme.of(context).textTheme.titleLarge),
                    Text(menuItem.body, style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}