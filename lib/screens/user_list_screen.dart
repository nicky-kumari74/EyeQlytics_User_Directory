import 'package:flutter/material.dart';
import 'package:user_data_fetching_task/getx_stateManagement/user_controller_getx.dart';
import 'package:get/get.dart';
import 'package:user_data_fetching_task/widgets/user_card.dart';

class UserListScreen extends StatelessWidget{
  final UserController userController=Get.put(UserController());
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title:Text('EyeQlytics User Directory'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) => userController.searchtext.value = value,
              decoration: InputDecoration(
                hintText: 'Search by name...',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
              child: Obx((){
                if(userController.isLoading.value){
                  return Center(child: CircularProgressIndicator(),);
                }
                return ListView.builder(
                  itemCount: userController.filteredUsers.length,
                    itemBuilder: (context,indx){
                    return userCard(user: userController.filteredUsers[indx]);
                    }
                );
              })
          )
        ],
      ),
    );
  }
}