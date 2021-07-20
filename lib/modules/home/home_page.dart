import 'package:flutter/material.dart';
import 'package:payflow/core/app_colors.dart';
import 'package:payflow/core/core.dart';
import 'package:payflow/modules/home/home_controller.dart';
import 'package:payflow/modules/home/widgets/app_bar/app_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  final List<Widget> pages = [
    Container(color: AppColors.primary),
    Container(color: Colors.blue)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),

      body: pages[controller.currentPage],

      bottomNavigationBar: Container(
        height: 90,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(icon: Icon(Icons.home, color: AppColors.body), onPressed: (){
                controller.setPage(0);
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
                  onTap: (){
                    Navigator.pushNamed(context, '/barcode');
                  }
              ),
              IconButton(icon: Icon(Icons.description, color: AppColors.primary), onPressed: (){
                controller.setPage(1);
                setState(() {});
              }),
            ]),
      ),
    );
  }
}
