import 'package:coffee_shop/src/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ItemGoods extends StatefulWidget {
  final String name;
  final int cost;
  final String picture;

  const ItemGoods({super.key, required this.name, required this.cost, this.picture = ''});

  @override
  _ItemGoodsState createState() => _ItemGoodsState();
}

class _ItemGoodsState extends State<ItemGoods> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.secondary, borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 32,
        ),
        child: SizedBox(
          child: Column(
            children: [
              Image.asset(
                widget.picture != ''
                    ? 'assets/images/coffee.png'
                    : 'assets/images/none.png',
                height: 100,
              ),
              Spacer(),
              const Text(
                'Олеато',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              SizedBox(
                height: 24,
                width: 116,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: AppColors.secondary,
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    ('${widget.cost.toString()} руб'),
                    style:
                        const TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
