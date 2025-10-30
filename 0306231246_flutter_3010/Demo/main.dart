import 'User.dart';
import 'dart:convert';
void main(){
final String jsonString='''{
"Name":"Tran Van Thanh",
"Email":"vanthanht034@caothang.edu.vn"
}''';
final UserMap=jsonDecode(jsonString) as Map<String,dynamic>;
final user=User.fromJson(UserMap);
print('Howdy,${user.Name}');
print('We sent the verification link to ${user.Email}');
}