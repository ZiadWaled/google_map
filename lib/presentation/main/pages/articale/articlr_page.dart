import 'package:flutter/material.dart';
import 'package:google_map_app/widgets/custom_appBar.dart';
import 'package:google_map_app/widgets/custom_article_page.dart';

class ArticlrPage extends StatelessWidget {
  const ArticlrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        image: 'assets/ss.png',
        icon: Icons.message,
        title: 'CREAM CHEESE FRENCH',
        colorTitle: Colors.black,
        colorIcon: Colors.red,
      ),
      body: Padding(padding: EdgeInsets.all(16), child: CustomArticlePage()),
    );
  }
}
