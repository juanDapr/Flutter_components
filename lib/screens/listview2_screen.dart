import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);
  static final le = ['Final Fantasy', 'Mario Bros', 'God of War'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.deepPurple,
          title: const Text('ListView tipo2 '),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(le[index]),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                  onTap: () {
                    final game = le[index];
                    print(game);
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: le.length));
  }
}
