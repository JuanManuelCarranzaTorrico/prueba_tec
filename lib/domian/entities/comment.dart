

class Comment {
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;
  const Comment(
    {
      required this.postId, 
    required this.id, 
    required this.name, 
    required this.email, 
    required this.body
    });
    factory Comment.fromJson(Map<String, dynamic> json) => Comment(
      postId: json['postId'],
      id: json['id'],
      name: json['name'],
      email: json['email'],
      body: json['body'],
    );
}
const comments = <Comment>[
  Comment(postId: 1, id: 1, name: "Name 1", email: "Email 1", body: "Body 1"),
  Comment(postId: 2, id: 2, name: "Name 2", email: "Email 2", body: "Body 2"),
  Comment(postId: 3, id: 3, name: "Name 3", email: "Email 3", body: "Body 3"),
];

