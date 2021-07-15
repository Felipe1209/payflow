import 'package:flutter/material.dart';
import 'package:payflow/core/core.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onTap;

  const LoginButton({
    Key? key,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: size.width * .65,
        height: size.height * .07,
        decoration: BoxDecoration(
          color: AppColors.shape,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColors.stroke)
        ),
        child: Row(children:[
          Container(
            width: size.width * .14,
            child: Image.asset(AppImages.google),
          ),
          Container(width: 1, color: AppColors.stroke),
          Container(
            width: size.width * .5,
            child: Align(alignment: Alignment.center,
                child: Text('Entrar com Google', style: AppTextStyles.buttonHeading))
          ),
        ]),
      ),
    );
  }
}
