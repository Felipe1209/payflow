import 'package:flutter/material.dart';
import 'package:payflow/modules/shared/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController{
  UserModel? _user;

  UserModel get user => _user!;

  void setUser({required BuildContext context, UserModel? user}){
    if(user != null){
      saveUser(user);
      _user = user;
      Navigator.pushReplacementNamed(context, '/home');
    } else{
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  void saveUser(UserModel user) async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('user', user.toJson());
  }

  void currentUser(BuildContext context) async{
    final prefs = await SharedPreferences.getInstance();
    await Future.delayed(Duration(seconds: 2));
    if(prefs.containsKey('user')){
      final json = prefs.get('user') as String;
      setUser(context: context, user: UserModel.fromJson(json));
    } else{
      setUser(context: context, user: null);
    }
  }

}