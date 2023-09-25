import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
class PageRule extends StatefulWidget {
  const PageRule({super.key});

  @override
  State<PageRule> createState() => _PageRuleState();
}

class _PageRuleState extends State<PageRule> {
  String url = "https://www.youtube.com/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: InAppWebView(initialUrlRequest: URLRequest(url: Uri.parse(url))));
  }
}
