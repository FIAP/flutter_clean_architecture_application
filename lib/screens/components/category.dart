import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_application/utils/const/categories.dart';

class Category extends StatelessWidget {
  final String category;

  const Category({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: InkWell(
            onTap: () {
              // Navigate to the category screen
            },
            child: Ink(
              child: Center(
                child: Image.asset("$imagePath$category.png"),
              ),
            ),
          ),
        ),
        Padding(padding: const EdgeInsets.all(8), child: Text(categories[category]!)),
      ],
    );
  }
}