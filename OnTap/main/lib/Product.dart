class Product {
  String name;
  String stringUrl;
  Product({required this.name, required this.stringUrl});
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'] as String,
      stringUrl: json['stringUrl'] as String,
    );
  }
}
