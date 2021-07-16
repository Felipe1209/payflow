import 'package:flutter/material.dart';
import 'package:payflow/core/core.dart';

class AppBarWidget extends PreferredSize{
  AppBarWidget() : super(
    preferredSize: Size.fromHeight(152),
    child: Container(
      color: AppColors.primary,
      height: 152,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Text.rich(TextSpan(
                text: "Olá, ",
                style: AppTextStyles.titleRegular,
                children: [
                  TextSpan(text: 'Felipe', style: AppTextStyles.titleBoldBackground)
                ])),
              Text('Mantenha suas contas em dia', style: AppTextStyles.captionShape)
            ]),
          Container(
            height: 48,
            width: 48,
            padding: EdgeInsets.only(top: 60),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColors.background,
              image: DecorationImage(image: AssetImage(AppImages.google))
            ))
      ])
    )
  );
}
