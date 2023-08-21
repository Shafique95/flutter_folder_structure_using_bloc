import 'dart:convert';
import 'package:http/http.dart' as http;

class BlogPostService {
  final String baseUrl;

  BlogPostService({required this.baseUrl});

  Future<List<Map<String, dynamic>>> fetchBlogPosts() async {
    final response = await http.get(Uri.parse('$baseUrl/posts'));
    if (response.statusCode == 200) {
      return List<Map<String, dynamic>>.from(json.decode(response.body));
    } else {
      throw Exception('Failed to fetch blog posts');
    }
  }
}
