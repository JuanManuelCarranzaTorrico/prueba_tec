import 'package:prueba_tec/config/dio_config.dart';
import 'package:prueba_tec/domian/entities/post_item.dart';


Future<List<PostItem>> getPostsDataSource() async{
  final response = await dio.get('/posts');
  List<PostItem> posts = (response.data as List).map((post) => PostItem.fromJson(post)).toList();

  return posts;
}