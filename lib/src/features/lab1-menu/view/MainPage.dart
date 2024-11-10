import 'package:flutter/material.dart';
import 'package:coffee_shop/src/theme/app_colors.dart';
import 'package:coffee_shop/src/features/lab1-menu/view/widgets/CategoriesList.dart';
import 'package:coffee_shop/src/features/lab1-menu/view/widgets/CategoryBlock.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<GlobalKey> keys = [GlobalKey(), GlobalKey(), GlobalKey(), GlobalKey()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leadingWidth: MediaQuery.of(context).size.width,
        backgroundColor: AppColors.background,
        surfaceTintColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 8.0,
          ),
          child: SizedBox(
            height: 36,
            child: CategoriesList(
              onCategorySelected: (value) {
                Scrollable.ensureVisible(
                  keys[value].currentContext!,
                  alignment: 0,
                  duration: const Duration(milliseconds: 500),
                );
              },
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: ListView(
            shrinkWrap: true,
            children: [
              CategoryBlock(key: keys[0], label: "Черный кофе"),
              CategoryBlock(key: keys[1], label: "Кофе с молоком"),
              CategoryBlock(key: keys[2], label: "Чай"),
              CategoryBlock(key: keys[3], label: "Авторские напитки"),
            ],
          ),
        ),
      ),
    );
  }
}
