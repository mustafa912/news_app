
class ArticalModel {
  final String imagURL;
  final String title;
  final String subTitle;
  final String url;

  const ArticalModel({required this.url, required this.imagURL, required this.title, required this.subTitle});
  
  factory ArticalModel.fromJson(json){
    return ArticalModel(
      imagURL: json['urlToImage']?? 'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930', 
      title: json['title']?? 'No Title', 
      subTitle: json['description']?? ' ',
      url: json['url']);
  }
}