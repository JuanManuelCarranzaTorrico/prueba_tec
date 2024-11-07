import 'package:flutter/material.dart';
import 'package:prueba_tec/config/menu/post_items.dart';

class PostProvider extends ChangeNotifier{
  List <PostItem> posts = [
    PostItem(
      title: 'Prueba Provider',
      body: 'Body 1',
      userId: 1,
      id: 1,
    ),
  ];
  bool isLoadingPosts = false;
  Future<void> getPosts() async{
    //todo: conectar con la api
    posts = postItems;
  }

  Future<void> createPost(PostItem post) async{
    //todo: conectar con la api
    posts.add(post);
  }
}
