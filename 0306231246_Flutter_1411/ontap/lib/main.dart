import 'package:flutter/material.dart';
import 'package:ontap/HomeScreen.dart';
import 'package:ontap/Resigter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainScreen());
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<StatefulWidget> createState() => _MainScreen();
}

final url = 'http://192.168.2.7:8000/api/user/login';

class _MainScreen extends State<MainScreen> {
  Future<Map<String, dynamic>?> fetchAccount(
    String username,
    String password,
  ) async {
    final uri = Uri.parse(url);
    try {
      final Response = await http.post(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'username': username,
          'password': password,
        }),
      );
      if (Response.statusCode == 200) {
        final data = json.decode(Response.body);
        print("Dữ liệu nhận được:$data");
        return json.decode(Response.body);
      } else {
        print("Yêu cầu thất bại:${Response.statusCode}");
        return null;
      }
    } catch (e) {
      print("Đã xảy ra lỗi:$e");
      return null;
    }
  }

  void LoginHome(String username, String password) async {
    final ResponseData = await fetchAccount(username, password);
    if (ResponseData != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Homescreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Đăng nhập thất bại xin kiểm tra lại thông tin"),
        ),
      );
    }
  }

  var Account = TextEditingController();
  var Password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Tên đăng nhập:"),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("Tên đăng nhập"),
                    border: OutlineInputBorder(),
                  ),
                  controller: Account,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Mật khẩu"),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("Mật khẩu"),
                    border: OutlineInputBorder(),
                  ),
                  controller: Password,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    LoginHome(
                      Account.text.toString(),
                      Password.text.toString(),
                    );
                  },
                  child: Text("Đăng nhập"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Resigter()),
                    );
                  },
                  child: Text("Đăng ký"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
