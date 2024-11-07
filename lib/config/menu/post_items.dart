// import 'package:flutter/material.dart';

class PostItem {
  final String title;
  final String body;
  final int userId;
  final int id;
  const PostItem(
      {required this.title,
      required this.body,
      required this.userId,
      required this.id}
      );
      factory PostItem.fromJson(Map<String, dynamic> json) => PostItem(
      title: json['title'],
      body: json['body'],
      userId: json['userId'],
      id: json['id'],
    );
    
}



const postItems = <PostItem>[
  PostItem(
    title: 'Title 1',
    body: 'Body 1',
    userId: 1,
    id: 1,
  ),
  PostItem(
    title: 'Title 2',
    body: 'Body 2',
    userId: 1,
    id: 2,
  ),
  PostItem(
    title: 'Title 3',
    body: 'Body 3',
    userId: 2,
    id: 3,
  ),
];
