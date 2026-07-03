import 'package:flutter/material.dart';

import '../core/data/articles_data.dart';
import '../widgets/article_card.dart';
import 'article_details_screen.dart';

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Aid Articles"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return ArticleCard(
            article: articles[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ArticleDetailsScreen(
                    article: articles[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}