import 'package:flutter/material.dart';
import 'package:prueba_tec/domian/entities/comment.dart';

class CommentProvider extends ChangeNotifier{
  List<Comment> comments = [];
  bool isLoadingComments = false;
  Future<void> getComments() async{
    //todo: conectar con la api
  }
}