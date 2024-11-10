import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_application/utils/const/categories.dart';

class Results extends StatelessWidget {
  final String category;

  const Results({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(categories[category]!),
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: ListView(
          children: const [
            ListTile(title: Text("Item 1")),
            ListTile(title: Text("Item 2")),
            ListTile(title: Text("Item 3")),
          ],
        ),
      ),
    ));
  }
}
