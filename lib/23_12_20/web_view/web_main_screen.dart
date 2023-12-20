import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class WebMainScreen extends StatefulWidget {
  const WebMainScreen({super.key});

  @override
  State<WebMainScreen> createState() => _WebMainScreenState();
}

class _WebMainScreenState extends State<WebMainScreen> {
  late WebViewController _webViewController;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MY Chrome'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
                _webViewController.loadUrl(value);
            },
            itemBuilder: (context) => [
              const PopupMenuItem<String>(
                value: 'https://google.com',
                child: Text('구글'),
              ),
              const PopupMenuItem<String>(
                value: 'https://naver.com',
                child: Text('네이버'),
              ),
              const PopupMenuItem<String>(
                value: 'https://kakao.com',
                child: Text('카카오'),
              ),
            ],
          ),
        ],
      ),
      body: WebView(
        initialUrl: 'https://flutter.dev',
        onWebViewCreated: (controller) {
          _webViewController = controller;
        },
      ),
    );
  }
}
