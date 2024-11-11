import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_application/domain/models/entry.dart';

class EntryCard extends StatelessWidget {
  final Entry entry;
  
  final dynamic isSaved;

  const EntryCard({super.key, required this.entry, required this.isSaved});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Dismissible(key: ValueKey<int>(entry.id), child: Column(
        children: [
          SizedBox(
            height: 180,
            child: InkWell(
              child: Row(
                children: [
                  Flexible(child: Text(entry.title!)),
                  Flexible(child: Text(entry.description!)),
                  Flexible(child: Image.network(
                              entry.image ?? ''
                            )),
                ],
              ),
            ),
          )
        ],
      ))
    );
  }
}