import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_application/controllers/dao_controller.dart';
import 'package:flutter_clean_architecture_application/domain/models/entry.dart';

class Details extends StatelessWidget {
  final Entry entry;
  final DaoController daoController = DaoController();

  Details({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Detalhes"),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                daoController.saveEntry(entry: entry);
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("Favoritado")));
              },
              child: const Icon(Icons.bookmark),
            ),
            body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(entry.title!.toUpperCase(),
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    Text(entry.description!),
                    Image.network(entry.image ?? '')
                  ],
                )))));
  }
}
