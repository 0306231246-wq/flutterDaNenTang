import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

const String api = 'https://dummyjson.com/products/add';
Future<void> createProductNew(
  String title,
  String description,
  String price,
) async {
  try {
    final Response = await http.post(
      Uri.parse(api),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
        'Description': description,
        'Price': price,
      }),
    );
    if (Response.statusCode == 200 || Response.statusCode == 201) {
      print('POST thành công');
      print('Phản hồi:${Response.body}');
    } else {
      print('POST thất bại. Status code:${Response.statusCode}');
      print('Lỗi: ${Response.body}');
    }
  } catch (e) {
    print('Lỗi kết nối:$e');
  }
}

class Newproduct extends StatefulWidget {
  const Newproduct({super.key});

  @override
  State<Newproduct> createState() => _Newproduct();
}

class _Newproduct extends State<Newproduct> {
  var title = TextEditingController();
  var Description = TextEditingController();
  var Price = TextEditingController();
  @override
  void dispose() {
    title.dispose();
    Description.dispose();
    Price.dispose();
    super.dispose();
  }

  void _submitData() {
    String _title = title.text;
    String _Description = Description.text;
    String _Price = Price.text;
    print('Title:${_title}');
    print('Description:${_Description}');
    print('Price:${_Price}');
    createProductNew(_title, _Description, _Price);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFFFE6CD),
        body: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 500),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          side: BorderSide.none,
                          elevation: 0,
                          backgroundColor: Color(0xFFFFE6CD),
                        ),
                        child: Text(
                          "<",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "ADD NEW PRODUCT",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("Title*:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                    ),
                    controller: title,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("Description*:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                    ),
                    controller: Description,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("Price*:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                    ),
                    controller: Price,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: _submitData,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFe0acc3),
                    ),
                    child: Text(
                      "Save",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
