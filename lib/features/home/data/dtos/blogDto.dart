import '../../domain/blogPostModel.dart';

class BlogPostDto {
  final int id;
  final String title;
  final String body;
  final String author;

  BlogPostDto({
    required this.id,
    required this.title,
    required this.body,
    required this.author,
  });

  // Named constructor to create a BlogPostDto model from JSON data
  factory BlogPostDto.fromJson(Map<String, dynamic> json) {
    return BlogPostDto(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      author: json['author'],
    );
  }

  // Convert DTO to Domain Model
  BlogPost toBlogPost() {
    return BlogPost(
      id: id,
      title: title,
      body: body,
      author: author,
    );
  }

  // Convert Domain Model to DTO
  factory BlogPostDto.fromBlogPost(BlogPost blogPost) {
    return BlogPostDto(
      id: blogPost.id,
      title: blogPost.title,
      body: blogPost.body,
      author: blogPost.author,
    );
  }
}
