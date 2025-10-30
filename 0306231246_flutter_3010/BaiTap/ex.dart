import 'dart:convert';
import 'Author.dart';
void main() {

  const String jsonString = '''
  {
    "id": 101,
    "title": "Dart JSON Serialization",
    "content": "Learn how to serialize and deserialize JSON in Dart.",
    "author": {
      "id": 1,
      "name": "Tuan Tran",
      "avatarUrl": "https://example.com/avatar.png"
    },
    "tags": ["dart", "flutter", "json"],
    "publishedAt": "2025-10-30T10:00:00Z"
  }
  ''';
  final UserMap=jsonDecode(jsonString) as Map<String,dynamic>;
  
  final user=User.fromJson(UserMap);
  
  print("Tiêu đề bài viết: ${user.title}");
  print("Tên tác giả: ${user.author.Name}");
  print("Tags: ${user.tags}");
}