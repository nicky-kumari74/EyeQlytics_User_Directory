import 'dart:convert';

import 'package:user_data_fetching_task/models/user_model.dart';
import 'package:http/http.dart' as http;
class ApiService{
  static Future<List<userModel>> fetchUsers() async{
    var uri=Uri.parse('https://randomuser.me/api/?results=30&seed=flutterdemo');
    final res=await http.get(uri);
    if(res.statusCode==200){
      print("success");
      final data=jsonDecode(res.body);
      final List users=data['results'];
      return users.map((e)=>userModel.fromJson(e)).toList();
    }
    else{
      throw Exception('Failed to load data');
    }
  }
}