import 'package:flutter/material.dart';
import 'package:news/model/NewsResponse.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsDetails extends StatefulWidget {
  final News news;
  const NewsDetails({super.key, required this.news});

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();

    final url = widget.news.url;
    if (url != null && url.isNotEmpty) {
      _controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(Uri.parse(url));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: widget.news.url != null && widget.news.url!.isNotEmpty
            ? WebViewWidget(controller: _controller)
            : const Center(
                child: Text(
                  "No content available",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
      ),
    );
  }
}
