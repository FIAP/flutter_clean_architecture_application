import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_application/controllers/dao_controller.dart';
import 'package:flutter_clean_architecture_application/domain/models/entry.dart';
import 'package:flutter_clean_architecture_application/screens/details.dart';

class EntryCard extends StatelessWidget {
  EntryCard({super.key, required this.entry, required this.isSaved});
  final Entry entry;
  final dynamic isSaved;
  final DaoController daoController = DaoController();

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Dismissible(
            key: ValueKey<int>(entry.id),
            direction: isSaved ? DismissDirection.endToStart : DismissDirection.none,
            onDismissed: (direction) {
              daoController.deleteEntry(entry: entry);
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Removido dos favoritos")));
            },
            child: Column(
              children: [
                SizedBox(
                  height: 180,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Details(entry: entry),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Flexible(child: Text(entry.title!)),
                        Flexible(child: Text(entry.description!)),
                        Flexible(child: Image.network(entry.image ?? '')),
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}
