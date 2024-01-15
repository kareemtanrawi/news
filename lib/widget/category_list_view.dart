import 'package:flutter/material.dart';
import 'package:newsapp/widget/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, builder) {
          return const CategoryCard();
        },
      ),
    );
  }
}
