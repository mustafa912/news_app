import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widget/category_item.dart';

class CategoryView extends StatelessWidget {
  //const CategoryList({required this.categorys});
  final List<CategoryModel> categorys=[

      CategoryModel(
        name: 'business',
        imag: 'assets/imags/business.avif'),
      CategoryModel(
        name: 'entertainment',
        imag: 'assets/imags/entertaiment.avif'),
      CategoryModel(
        name: 'general',
        imag: 'assets/imags/general.avif'),
      CategoryModel(
        name: 'health',
        imag: 'assets/imags/health.avif'),
      CategoryModel(
        name: 'science',
        imag: 'assets/imags/science.avif'),
      CategoryModel(
        name: 'sports',
        imag: 'assets/imags/sports.avif'),
      CategoryModel(
        name: 'technology',
        imag: 'assets/imags/technology.jpeg'),

  ];

   CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categorys.length,
        itemBuilder: (context , index){
          return CategoryItem(category: categorys[index],);
        },
        
        ),
    );
  }
}