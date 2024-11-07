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