import 'package:prueba_tec/config/dio_config.dart';
import 'package:prueba_tec/config/menu/post_items.dart';


Future<List<PostItem>> getPostsDataSource() async{
  final response = await dio.get('/posts');
  List<PostItem> posts = (response.data as List).map((post) => PostItem.fromJson(post)).toList();

  return posts;
}