import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/widget/category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = [
    CategoryModel(image: 'assets/sports.avif', text: 'Sports'),
    CategoryModel(image: 'assets/entertaiment.avif', text: 'Entertaiment'),
    CategoryModel(image: 'assets/business.avif', text: 'Business'),
    CategoryModel(image: 'assets/general.avif', text: 'General'),
    CategoryModel(image: 'assets/health.avif', text: 'Health'),
    CategoryModel(image: 'assets/science.avif', text: 'Science'),
    CategoryModel(image: 'assets/technology.jpeg', text: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
