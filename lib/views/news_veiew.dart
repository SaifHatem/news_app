import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsWebView extends StatefulWidget {
  const NewsWebView({super.key, required this.url});

  final String url;
  @override
  State<NewsWebView> createState() => _NewsWebViewState();
}

class _NewsWebViewState extends State<NewsWebView> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(widget.url),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("News"),
              Text(
                "Cloud",
                style: TextStyle(
                  color: Colors.black,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        body: WebViewWidget(
          controller: controller,
        ));
  }
}
