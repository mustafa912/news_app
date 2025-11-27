import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/services/api_service.dart';
import 'package:news_app/widget/post_news_view.dart';

class PostViewBuilder extends StatefulWidget {
   final String categorey;
  const PostViewBuilder({super.key, required this.categorey });

  @override
  State<PostViewBuilder> createState() => _PostViewBuilderState();
}

class _PostViewBuilderState extends State<PostViewBuilder> {

  dynamic future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      future = ApiService(Dio()).GetNews(widget.categorey);
  }
  
  @override
  Widget build(BuildContext context) {
     return FutureBuilder<List<ArticalModel>>(
      future: future , 
      builder: (context, snapshot){
        if(snapshot.connectionState==ConnectionState.waiting){
          return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator(),),);
        }
        else if(snapshot.hasError){
          return SliverToBoxAdapter(child: Center(child: Text('Error ${snapshot.error}'),),);
        }
        else if(!snapshot.hasData){
          return SliverToBoxAdapter(child:Center(child: Text("No Data"),));
        }
        else {
          final artcalss= snapshot.data!;
          return 
          PostNewsView(articals: artcalss);
        }

      });
  }
}





// // ------------------- StatefulWidget

// class PostViewBuilder extends StatefulWidget {
//    final String categorey;
  
//   const PostViewBuilder({super.key, required this.categorey });
//  // final String categorey;

//   @override
//   State<PostViewBuilder> createState() => _PostViewBuilderState();
// }

// class _PostViewBuilderState extends State<PostViewBuilder> {
  
//   List<ArticalModel>articals=[];
//   bool isLoading =true;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getGenralNews();
//   }
  
//    Future<void> getGenralNews() async {
//     articals = await ApiService(Dio()).GetNews(widget.categorey);
//     setState(() {
//     });
//     isLoading = false;  
//   }
//   @override
//   Widget build(BuildContext context) {
//      if(isLoading==true){
//       return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
//     }
    
//     else {return PostNewsView(articals: articals);}
//   }
// }