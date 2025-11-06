import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

const String api='https://dummyjson.com/products/add';
Future<void> createProductNew(String message) async{
  final Map<String,dynamic>NewProductData={
    'title':message
  };
}
class Newproduct extends StatefulWidget {
  const Newproduct({super.key});

  @override
  State<Newproduct>createState()=>_Newproduct();
}
class _Newproduct extends State<Newproduct>{
  var title = TextEditingController();
  var Description=TextEditingController();
  var Price =TextEditingController();
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFFFE6CD),
      body: Center(
        child:Container(
          constraints: BoxConstraints(
            maxWidth: 500
          ),
            child:  Column(
          children: [
            Row(
              
              children: [
                    Padding(padding: const EdgeInsets.all(10),
                    child: ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    },style: ElevatedButton.styleFrom(
                      side: BorderSide.none,
                      elevation: 0,
                      backgroundColor:Color(0xFFFFE6CD),                  
                    )            
                    , child: Text("<",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                    ),
                    Padding(padding: const EdgeInsets.all(10),
                    child: Text("ADD NEW PRODUCT",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
              ],
            ),
              Padding(padding: const EdgeInsets.all(10),
                    child: Text("Title*:"),
                    ),
              Padding(padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder()
                  
                ),
                controller: title,
              ),
              ),
              Padding(padding: const EdgeInsets.all(10),
                    child: Text("Description*:"),
                    ),
              Padding(padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder()
                ),
                controller: Description,
              ),
              ),
              Padding(padding: const EdgeInsets.all(10),
                    child: Text("Price*:"),
                    ),
              Padding(padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder()
                ),
                controller: Price,
              ),
              ),
              Padding(padding: const EdgeInsets.all(10),
              child: ElevatedButton(onPressed: (){},
              style:ElevatedButton.styleFrom(backgroundColor: Color(0xFFe0acc3),)
            ,
               child: Text("Save",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),)),)
          ],
        ),
        ) 
      ),
      ),
    );
  }
}