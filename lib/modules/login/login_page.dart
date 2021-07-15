import 'package:flutter/material.dart';
import 'package:payflow/core/core.dart';
import 'package:payflow/modules/login/widgets/login_button/login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Container(color: AppColors.primary, height: size.height * .37),
        Padding(
          padding: EdgeInsets.only(top: size.height * .1),
          child: Column(children: [
            Align(
                alignment: Alignment.topCenter,
                child: Image.asset(AppImages.person, height: size.height * .46, width: size.width * .55)
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * .02),
              child: Image.asset(AppImages.logomini),
            ),
            Text('Organize seus\nboletos em um\nsó lugar', style: AppTextStyles.titleHome, textAlign: TextAlign.center),
            SizedBox(height: size.height * .02),
            LoginButton(onTap: (){
              Navigator.pushNamed(context, '/home');
            })


          ]),
        )



      ]),
    );
  }
}
