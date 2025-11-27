import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsWebView extends StatefulWidget {

  final String url;
  const NewsWebView({super.key, required this.url});

  @override
  State<NewsWebView> createState() => _NewsWebViewState();
}

class _NewsWebViewState extends State<NewsWebView> {
  bool isLoding= true;
  late final WebViewController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onPageFinished: (url) {
          setState(() {
            isLoding = false;
          });
        },
      )
    )
    ..loadRequest(Uri.parse((widget.url)));
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("detils News"),
      ),
      body:Stack(
        children: [
          WebViewWidget(controller: _controller),
          if(isLoding )
            Center(child: CircularProgressIndicator(),)
          
        ],
      ) ,
    );
  }
}