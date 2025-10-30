class Author{
  final int id;
  final String Name;
  final String avatarUrl;
  Author({required this.Name,required this.id,required this.avatarUrl});
  factory Author.fromJson(Map<String,dynamic> json){
    return Author(
      Name: json['name'], id: json['id'], avatarUrl: json['avatarUrl']
      );
  }
}
class User{
  final int id;
  final String title;
  final String content;
  final Author author;
  final List<String> tags;
  final String publishedAt;
  User({required this.id,required this.title,required this.content,required this.author,required this.publishedAt,required this.tags});
  factory User.fromJson(Map<String,dynamic>json){
    final authorMap=json['author'] as Map<String,dynamic>;
    final authorObject=Author.fromJson(authorMap);
    return User(
      id: json['id'] as int, 
    title: json['title'] as String,  
    content: json['content'] as String, 
    author: authorObject, 
    publishedAt: json['publishedAt'] as String, 
    tags: (json['tags'] as List<dynamic>).cast<String>()
    );
  }
  
}
