import 'package:flutter/material.dart';
import 'package:news_app/widget/category_view.dart';
import 'package:news_app/widget/post_view_builder.dart';

class HomeView extends StatelessWidget {
  // const HomeView({super.key});
  const HomeView({super.key, });


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            Spacer(flex: 1,),
            Text(
            "News",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black),),
              Text(
            "Cloud",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.amber),),
            Spacer(flex: 1,),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16 ),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoryView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20,),
            ),
            
            PostViewBuilder(categorey: 'general',),
          ],
        ),
      )

      
    );
  }
}

