import 'package:flutter/material.dart';
import 'package:prueba_tec/config/menu/post_items.dart';
import 'package:prueba_tec/domian/entities/comment.dart';

class CommentProvider extends ChangeNotifier{
  List<Comment> comments = [];
  bool isLoadingComments = true;
  int postId = 0;
  
  Future<void> getComments() async{
    //todo: conectar con la api
    await Future.delayed(const Duration(seconds: 3));
    comments = [
      Comment(
        postId: postId,
        id: 1,
        name: 'Comment ${postId}',
        email: 'comment1@example.com',
        body: 'Body 1',
      ),
    ];
    isLoadingComments = false;
    notifyListeners();
  }
  void setIsLoadingComments(bool value){
    isLoadingComments = value;
    notifyListeners();
  }
  void setPostId(int value){
    postId = value;
    notifyListeners();
  }
  void clearComments(){
    comments = [];
    notifyListeners();
  }
}