import 'package:flutter/material.dart';
import 'package:coffee_shop/src/features/lab1-menu/view/widgets/ItemGoods.dart';

class CategoryBlock extends StatelessWidget {
  final String label;

  const CategoryBlock({super.key, required this.label});

  static const List<Good> goods = [
    Good(name: 'Олеато', cost: 100, picture: ''),
    Good(name: 'Олеато', cost: 100, picture: ''),
    Good(name: 'Олеато', cost: 100, picture: ''),
    Good(name: 'Олеато', cost: 100, picture: ''),
    Good(name: 'Олеато', cost: 100, picture: ''),
    Good(name: 'Олеато', cost: 100, picture: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
          ),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        GridView.extent(
          // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.75,

          // ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          maxCrossAxisExtent: 200,

          children: List.generate(
            goods.length,
            (index) => ItemGoods(
              name: goods[index].name,
              cost: goods[index].cost,
              picture: goods[index].picture,
            ),
          ),
        ),
      ],
    );
  }
}

class Good {
  final String name;
  final int cost;
  final String picture;

  const Good({
    required this.name,
    required this.cost,
    required this.picture,
  });
}
