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
          title:Text('EyeQlytics User Directory',style: TextStyle(color: Colors.white),),
        //centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10),
              child: TextField(
                onChanged: (value) => userController.searchtext.value = value,
                decoration: InputDecoration(
                  hintText: 'Search by name...',
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue,width: 2)
                  ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue,width: 2)
                    ),
                  prefixIcon: Icon(Icons.search)
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
      ),
    );
  }
}