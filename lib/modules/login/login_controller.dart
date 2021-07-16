import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:payflow/modules/shared/auth/auth_controller.dart';
import 'package:payflow/modules/shared/models/user_model.dart';

class LoginController{
  final authController = AuthController();

  void googleSignIn(BuildContext context) async{
    GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
    try {
      var response = await _googleSignIn.signIn();
      final user = UserModel(name: response!.displayName!, photoUrl: response.photoUrl);
      authController.setUser(context: context, user: user);
    } catch (error) {
      authController.setUser(context: context, user: null);
    }
  }

}