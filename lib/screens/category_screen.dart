import 'package:flutter/material.dart';
import 'package:news_app/widget/post_view_builder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.categoryName});
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 227, 226, 222),
        title: Row(
          children: [
            Spacer(flex: 2,),
            Text("$categoryName News",style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
            Spacer(flex: 3,)

          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: CustomScrollView(
           slivers: [
            PostViewBuilder(categorey: categoryName,),
           ],
            ),
      ));
  }
}