import 'package:flutter/material.dart';
import 'package:payflow/core/core.dart';
import 'package:payflow/modules/home/home_controller.dart';

class BottomNavigationWidget extends StatefulWidget {
  final HomeController controller;

  const BottomNavigationWidget({
    Key? key,
    required this.controller
  }) : super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(icon: Icon(Icons.home, color: AppColors.body), onPressed: (){
              widget.controller.setPage(0);
              setState(() {});
            }),
            GestureDetector(
                child: Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.primary
                  ),
                  child: Icon(Icons.add_box_outlined, color: Colors.white),
                ),
                onTap: (){}
            ),
            IconButton(icon: Icon(Icons.description, color: AppColors.primary), onPressed: (){
              widget.controller.setPage(1);
              setState(() {});
            }),
          ]),
    );
  }
}


