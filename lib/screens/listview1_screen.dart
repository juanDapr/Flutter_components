import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);
  static final le = ['Final Fantasy', 'Mario Bros', 'God of War'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView tipo1 '),
        ),
        body: ListView(children: [
          ...le
              .map((game) => ListTile(
                    trailing: Icon(Icons.arrow_back_ios_new_outlined),
                    title: Text(game),
                  ))
              .toList()
        ]));
  }
}
