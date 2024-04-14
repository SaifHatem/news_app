// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class WebViewCategory extends StatefulWidget {
//   const WebViewCategory({super.key, required this.url});

//   final String url;
//   @override
//   State<WebViewCategory> createState() => _WebViewCategoryState();
// }

// class _WebViewCategoryState extends State<WebViewCategory> {
//   late final WebViewController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = WebViewController()
//       ..loadRequest(
//         Uri.parse(widget.url),
//       );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Row(
//             //mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("News"),
//               Text(
//                 "Cloud",
//                 style: TextStyle(
//                   color: Colors.black,
//                   //fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         body: WebViewWidget(
//           controller: controller,
//         ));
//   }
// }
