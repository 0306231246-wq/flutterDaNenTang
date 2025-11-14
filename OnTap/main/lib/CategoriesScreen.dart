import 'package:flutter/material.dart';
import 'package:main/Product.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

final baseUrl = 'https://dummyjson.com/products/categories';
Future<List<String>> fetchCategoryNames() async {
  final response = await http.get(Uri.parse(baseUrl));

  if (response.statusCode == 200) {
    final List<dynamic> categoryNames = jsonDecode(response.body);

    return categoryNames.cast<String>();
  } else {
    throw Exception('Tải dữ liệu danh mục thất bại');
  }
}

class Categories extends StatefulWidget {
  const Categories({super.key});
  @override
  State<Categories> createState() => _Categories();
}

class _Categories extends State<Categories> {
  late Future<List<String>> _futureProduct;
  @override
  void initState() {
    _futureProduct = fetchCategoryNames();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE6CD),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFE6CD),
                      side: BorderSide.none,
                      elevation: 0,
                    ),
                    child: Text(
                      "<",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "CATEGORIES",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Expanded(
              child: FutureBuilder<List<Product>>(
                future: _futureProduct,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return const Center(child: Text("Lỗi tải danh sách"));
                  } else if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        final product = snapshot.data![index];
                        return ListTile(title: Text(product.name));
                      },
                    );
                  }
                  return const Center(child: Text('Không có sản phẩm nào.'));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
