import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('NewScreen'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text('GARAY'),
              leading: Icon(Icons.ac_unit),
              subtitle: Text('GAY'),
              onTap: () {},
              hoverColor: Colors.amber,
              trailing: Icon(Icons.accessible_forward_rounded),
            ),
            Text('DANIEL')
          ],
        ));
  }
}
