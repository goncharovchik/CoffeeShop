import 'package:flutter/material.dart';
import 'package:flutter_course/src/theme/app_colors.dart';
import 'package:flutter_course/src/features/lab1-menu/view/widgets/CategoriesList.dart';

class MenuPage extends StatefulWidget {  
  const MenuPage({super.key});  

  @override  
  _MenuPageState createState() => _MenuPageState();  
}  

class _MenuPageState extends State<MenuPage> {  

  @override  
  Widget build(BuildContext context) {  
    return Scaffold( 
      body: SafeArea(  
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            children: [
              SizedBox(  
                height: 36,  
                child: CategoriesList()
              ),
            ],
          ),
        ),  
      ),  
    );  
  }  
}  