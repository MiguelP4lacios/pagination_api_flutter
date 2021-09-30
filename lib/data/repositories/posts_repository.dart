import 'package:pagination_exemple/data/models/post_model.dart';
import 'package:pagination_exemple/data/services/posts_service.dart';

class PostsRepository {

  final PostsService service;

  PostsRepository(this.service);

  Future<List<Post>> fetchPosts(int page) async {
    final posts = await service.fetchPosts(page);
    return posts.map((e) => Post.fromJson(e)).toList();
  }
  
}