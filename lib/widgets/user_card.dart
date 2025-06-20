import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_data_fetching_task/models/user_model.dart';
import 'package:flutter/foundation.dart';

class userCard extends StatelessWidget{
  final userModel user;
  const userCard({Key? key, required this.user}):super(key: key);
  @override
  Widget build(BuildContext context){
    print(user.avatar);
    return Card(
      margin: EdgeInsets.all(8),
      elevation: 3,
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.black12,
          backgroundImage: NetworkImage(
              kIsWeb ? 'https://ui-avatars.com/api/?name=${Uri.encodeComponent(user.name)}' : user.avatar
          ),
        ),

          title: Text(user.name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 17),),
        subtitle: Text(user.email,style: TextStyle(color: Colors.black,fontSize: 17)),
      ),
    );
  }
}
//'https://ui-avatars.com/api/?name=${Uri.encodeComponent(user.name)}'