import 'package:flutter/material.dart';
import 'package:insure/web_view_container.dart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insure',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        '/home': (context) => MyHomePage(),
        '/webViewContainer': (context) => WebViewContainer(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/webViewContainer');
          },
          child: Text('Open WebView'),
        )),
      ),
    );
  }
}
