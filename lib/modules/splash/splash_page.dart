import 'package:flutter/material.dart';
import 'package:payflow/core/core.dart';
import 'package:payflow/modules/shared/auth/auth_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = AuthController();
    controller.currentUser(context);

    return Scaffold(
      body: Stack(children: [
          Center(child: Image.asset(AppImages.union)),
          Center(child: Image.asset(AppImages.logoFull))
      ]),
    );
  }
}
