import 'package:flutter/material.dart';
import 'package:payflow/core/core.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: 1,
      color: AppColors.stroke,
    );
  }
}
