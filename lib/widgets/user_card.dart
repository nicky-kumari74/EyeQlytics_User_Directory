import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_data_fetching_task/models/user_model.dart';

class userCard extends StatelessWidget{
  final userModel user;
  const userCard({Key? key, required this.user}):super(key: key);
  @override
  Widget build(BuildContext context){
    print(user.avatar);
    String imageUrl = 'https://corsproxy.io/?https://randomuser.me/api/portraits/med/men/29.jpg';
    return Card(
      margin: EdgeInsets.all(8),
      elevation: 4,
      child: ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.black12,
          backgroundImage: NetworkImage(
              'https://xsgames.co/randomusers/assets/avatars/male/77.jpg',
          ),
        ),

          title: Text(user.name),
        subtitle: Text(user.email),
      ),
    );
  }
}
//'https://ui-avatars.com/api/?name=${Uri.encodeComponent(user.name)}'