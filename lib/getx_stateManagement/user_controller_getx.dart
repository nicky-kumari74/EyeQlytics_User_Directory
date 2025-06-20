import 'package:get/get.dart';
import 'package:user_data_fetching_task/models/user_model.dart';
import 'package:user_data_fetching_task/services/api_service.dart';
class UserController extends GetxController{
  var usersData=<userModel>[].obs;
  var isLoading=true.obs;
  var searchtext=''.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    fetchUsers();
    super.onInit();
  }

  void fetchUsers() async{
    try{
      isLoading(true);
      var users=await ApiService.fetchUsers();
      usersData.assignAll(users);
    }
    finally{
      isLoading(false);
    }

  }
  List<userModel> get filteredUsers {
    if (searchtext.isEmpty) return usersData;
    return usersData
        .where((u) => u.name.toLowerCase().contains(searchtext.value.toLowerCase()))
        .toList();
  }
}