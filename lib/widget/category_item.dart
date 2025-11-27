import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/screens/category_screen.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
          return CategoryScreen(categoryName: category.name,);

        }));
      },
      child: Container(
          height: 90,
          width: 180,
          margin: EdgeInsets.only(right: 14),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(category.imag),
            fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10)
          ),
          child: 
            Center(
              child: Text(
                category.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              
              ),
            ),
            
      ),
    );
  }
}