import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/screens/news_web_view.dart';

class PostNews extends StatelessWidget {
   PostNews({super.key, required this.artical});
  ArticalModel artical;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 14.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(6),
              child: Image.network(
              artical.imagURL,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                 MaterialPageRoute(builder: (BuildContext){
                  return NewsWebView(url: artical.url,);
                 }));
              },
              child: Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                artical.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              artical.subTitle,
              style: TextStyle(
                color: const Color.fromARGB(221, 80, 74, 74),
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }
}