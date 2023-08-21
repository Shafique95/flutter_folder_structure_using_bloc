

import '../../application/blogServises.dart';
import '../../domain/blogPostModel.dart';
import '../dtos/blogDto.dart';

class BlogPostRepository {
  final BlogPostService blogPostService;

  BlogPostRepository({required this.blogPostService});

  // Method to fetch blog posts from the remote data source and convert them to BlogPost models
  Future<List> getBlogPosts() async {
    final remoteBlogPosts = await blogPostService.fetchBlogPosts();
    return remoteBlogPosts.map((postJson) => BlogPostDto.fromJson(postJson).toBlogPost()).toList();
  }
}
