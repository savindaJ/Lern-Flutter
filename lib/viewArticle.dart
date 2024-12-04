import 'package:flutter/material.dart';

class ViewArticle extends StatelessWidget {
  const ViewArticle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text('This is the article content.'),
      ),
    );
  }
}
