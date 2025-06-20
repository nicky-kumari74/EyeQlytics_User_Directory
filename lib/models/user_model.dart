import 'package:flutter/foundation.dart';

class userModel{
  final String name;
  final String email;
  final String avatar;

  userModel({
    required this.name,
    required this.email,
    required this.avatar
});
  factory userModel.fromJson(Map<String,dynamic> json){
    final name="${json['name']['first']} ${json['name']['last']}";
    final email=json['email'];
    final avatar=json['picture']['medium'];
    return userModel(name:name,email:email,avatar: avatar);
  }
  String get webSafeAvatar {
    if (!kIsWeb) return avatar;

    // Extract gender and number from URL
    final segments = Uri.parse(avatar).pathSegments;
    final gender = segments[2]; // "men" or "women"
    final number = segments[3].replaceAll('.jpg', '');

    return 'https://xsgames.co/randomusers/assets/avatars/${gender == "men" ? "male" : "female"}/$number.jpg';
  }
}