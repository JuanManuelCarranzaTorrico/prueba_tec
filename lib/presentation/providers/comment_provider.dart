import 'package:flutter/material.dart';
import 'package:prueba_tec/datasource/comment_datasource.dart';
import 'package:prueba_tec/domian/entities/comment.dart';

class CommentProvider extends ChangeNotifier{
  List<Comment> comments = [];
  bool isLoadingComments = true;
  int postId = 0;
  
  Future<void> getComments() async{
    List<Comment> comments1 = await getCommentsDataSource(postId);
    comments = comments1;
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