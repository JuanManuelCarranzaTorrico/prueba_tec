
import 'package:flutter/material.dart';
import 'package:prueba_tec/config/dio_config.dart';
import 'package:prueba_tec/domian/entities/post_item.dart';
import 'package:prueba_tec/datasource/post_datasource.dart';

class PostProvider extends ChangeNotifier{
  // List <PostItem> posts = [];
  List<PostItem> posts = [];

  bool isLoadingPosts = true;

  bool isCreatingPost = false;

  Future<void> getPosts() async{
    // await Future.delayed(const Duration(seconds: 3));
    List<PostItem> postItems = await getPostsDataSource();
    posts = postItems;
    isLoadingPosts = false;
    notifyListeners();
  }

  Future<void> createPost(PostItem post) async{
    setIsCreatingPost(true);
    await Future.delayed(const Duration(seconds: 2));
    //todo: conectar con la api
    Map<String, dynamic> data = {
      'title': post.title,
      'body': post.body,
      'userId': post.userId,
    };
    
    final response = await dio.post('/posts', data: data);
    print(response.data);

    posts = [...posts, post];
    setIsCreatingPost(false);
    notifyListeners();
  }
  void setIsCreatingPost(bool value){
    isCreatingPost = value;
    notifyListeners();
  }
}
