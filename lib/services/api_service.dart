import 'package:dio/dio.dart';
import 'package:news_app/models/artical_model.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  Future<List<ArticalModel>> GetNews(String categorey)async{
  String category =categorey;

  Response response = await dio.get(
    'https://newsapi.org/v2/top-headlines?country=us&apiKey=1b9ef2b86ab944e1af031bb24668b21e&category=$category');
  
  dynamic jsonData =response.data;
  List<dynamic> articales=jsonData['articles'];
  List<ArticalModel>articalesList=[];

  for (var artical in articales){

    ArticalModel articalModel=ArticalModel.fromJson(artical);
    articalesList.add(articalModel);
  }
  return articalesList;

  }
  
}


//  for (var artical in articales) 
//     {
//       ArticalModel articalModel=ArticalModel(
//         imagURL: artical['urlToImage']?? 'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930',
//         title: artical['title']?? 'No Title',
//           subTitle: artical['content']?? ' ');
//       articalesList.add(articalModel);    
//     }
//     return articalesList;
