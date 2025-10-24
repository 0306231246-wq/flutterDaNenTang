import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  
  @override
  State<MainApp> createState() => _MainApp();
}

class _MainApp extends State<MainApp> {

  Future<List<Map<String, dynamic>>>? futureUsers;
  Future<List<Map<String, dynamic>>> fetchUsers() async {
    await Future.delayed(const Duration(seconds: 3));
    if (Random().nextBool()) {
      throw Exception("Không thể tải dữ liệu người dùng!");
    }
    return [
      {'name': 'Tuấn', 'age': 28},
      {'name': 'Lan', 'age': 24},
      {'name': 'Hưng', 'age': 31},
    ];
  }

  void _loadData() {
    setState(() {
      futureUsers = fetchUsers();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bài tập Future"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _loadData,
                child: const Text("Tải dữ liệu"),
              ),
              const SizedBox(height: 20),
              
              Expanded(
                child: FutureBuilder<List<Map<String, dynamic>>>(
                  future: futureUsers,
                  builder: (context, snapshot) {
                    if (futureUsers == null) {
                      return const Text("Nhấn nút để tải dữ liệu");
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(width: 10),
                          Text("Đang tải..."),
                        ],
                      );
                    }
                    if (snapshot.hasError) {
                      return Text(
                        "Lỗi: ${snapshot.error}", 
                        style: const TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      );
                    }
                    if (snapshot.hasData) {
                      final users = snapshot.data!;
                      if (users.isEmpty) {
                         return const Text("Không có người dùng nào.");
                      }
                      return ListView.builder(
                        itemCount: users.length,
                        itemBuilder: (context, index) {
                          final user = users[index];
                          return ListTile(
                            leading: CircleAvatar(child: Text(user['name'][0])),
                            title: Text(user['name']),
                            subtitle: Text('${user['age']} tuổi'),
                          );
                        },
                      );
                    }
                    return const Text("Không có gì để hiển thị.");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}