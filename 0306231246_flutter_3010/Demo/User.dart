class User{
  final String Name;
  final String Email;
  User({required this.Name,required this.Email});
  User.fromJson(Map<String,dynamic>json)
  :Name=json['Name'] as String,
  Email=json['Email'] as String;
  Map<String,dynamic> toJson()=>{
    'Name':Name,
    'Email':Email,
  };
}
