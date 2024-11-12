import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_application/controllers/dao_controller.dart';
import 'package:flutter_clean_architecture_application/screens/components/entry_card.dart';

class Favorites extends StatelessWidget {
  Favorites({super.key});
  final DaoController daoController = DaoController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Favoritos")
        ),
        body: FutureBuilder(
          future: daoController.getSavedEntries(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.active:
                break;
              case ConnectionState.none:
                break;
              case ConnectionState.done:
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemBuilder: (context, index) => EntryCard(
                      entry: snapshot.data![index],
                      isSaved: false,
                    ),
                    itemCount: snapshot.data!.length,
                  );
                } else {
                  return Center(
                    child: Text("Results: ${snapshot.error}"),
                  );
                }
              case ConnectionState.waiting:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              default:
            }
            return Container();
          },
        ),
      ),
    );
  }
}
