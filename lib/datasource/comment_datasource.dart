import 'package:prueba_tec/config/dio_config.dart';
import 'package:prueba_tec/domian/entities/comment.dart';

Future<List<Comment>> getCommentsDataSource(int postId) async{
  final response = await dio.get('/posts/$postId/comments');
  List<Comment> comments = (response.data as List).map((comment) => Comment.fromJson(comment)).toList();
  return comments;
}
