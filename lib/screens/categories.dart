import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_application/utils/const/categories.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Escolha uma categoria'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.bookmark),
                  onPressed: () {
                    // Navigate to the search screen
                  },
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(8),
              child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    mainAxisExtent: 200,
                  ),
                  children: 
                    categories.keys.map((e) => Text("Category: ${categories[e]}")).toList(),
                  ),
            )));
  }
}
