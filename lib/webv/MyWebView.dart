import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class MyWebView extends StatefulWidget {
  const MyWebView({Key? key}) : super(key: key);

  @override
  _MyWebViewState createState() => _MyWebViewState();
}

class _MyWebViewState extends State<MyWebView> {
  WebViewController? _controller;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      child: WebView(initialUrl: "https://www.jiomart.com",
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
        },
        javascriptMode: JavascriptMode.unrestricted,),

    ));
  }
}
