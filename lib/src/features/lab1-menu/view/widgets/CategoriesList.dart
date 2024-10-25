import 'package:flutter/material.dart';
import 'package:flutter_course/src/theme/app_colors.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  _CategoriesListState createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  List<CategoryItem> categories = [
    CategoryItem(name: 'Чёрный кофе', isSelected: true),
    CategoryItem(name: 'Кофе с молоком', isSelected: false),
    CategoryItem(name: 'Чай', isSelected: false),
    CategoryItem(name: 'Авторские напитки', isSelected: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        if (index == 0) {
          return const SizedBox(
            width: 8,
          );
        } else {
          int item = index - 1;
          return ChoiceChip(
            label: Text(categories[item].name),
            labelStyle: TextStyle(
                fontSize: 14,
                color: (categories[item].isSelected
                    ? Colors.white
                    : Colors.black)),
            selected: categories[item].isSelected,
            selectedColor: AppColors.primary,
            disabledColor: AppColors.secondary,
            showCheckmark: false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: const BorderSide(
                style: BorderStyle.none,
              ),
            ),
            onSelected: (value) {
              setState(() {
                for (var category in categories) {
                  category.isSelected = false;
                }
                categories[item].isSelected = true;
              });
            },
          );
        }
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 8,
        );
      },
      itemCount: categories.length + 1,
      shrinkWrap: true,
    );
  }
}

class CategoryItem {
  String name;
  bool isSelected;

  CategoryItem({required this.name, required this.isSelected});
}
