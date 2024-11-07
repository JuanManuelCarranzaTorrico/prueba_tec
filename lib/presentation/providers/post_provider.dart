import 'package:flutter/material.dart';
import 'package:prueba_tec/config/menu/post_items.dart';

class PostProvider extends ChangeNotifier{
  // List <PostItem> posts = [];
  List<PostItem> posts = [];

  bool isLoadingPosts = true;

  bool isCreatingPost = false;

  Future<void> getPosts() async{
    //todo: conectar con la api
    await Future.delayed(const Duration(seconds: 3));
    posts = postItems;
    isLoadingPosts = false;
    notifyListeners();
  }

  Future<void> createPost(PostItem post) async{
    setIsCreatingPost(true);
    await Future.delayed(const Duration(seconds: 2));
    //todo: conectar con la api
    posts = [...posts, post];
    setIsCreatingPost(false);
    notifyListeners();
  }
  void setIsCreatingPost(bool value){
    isCreatingPost = value;
    notifyListeners();
  }
}
