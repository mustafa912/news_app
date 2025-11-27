import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/widget/post_news.dart';

class PostNewsView extends StatelessWidget {
   PostNewsView({super.key, required this.articals});
List<ArticalModel>articals=[];
  @override
  Widget build(BuildContext context) {

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articals.length,
        (context, index)
        {
          return PostNews(artical: articals[index],);
        },     
    ));
  }
}