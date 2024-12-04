import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 10, // Number of times to repeat the ArticleCard
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 8.0), // Add spacing between cards
            child: ArticleCard(),
          );
        },
      ),
    );
  }
}

class ArticleCard extends StatelessWidget {
  const ArticleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.account_circle),
              ),
              Text('Savinda Jayasekara.'),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Padding(padding: EdgeInsets.all(8.0)),
              const Text('Sample text for the article content...', overflow: TextOverflow.ellipsis),
               Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0), // Rounded corners for the image
                child: Image.network(
                  'https://via.placeholder.com/150', // Replace with your image URL
                  fit: BoxFit.cover,
                  height: 100, // Adjust height
                ),
              ),
               )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/view-article');
                },
                child: const Text('Read More'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
