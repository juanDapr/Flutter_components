import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.all(5),
            child: CircleAvatar(
              child: const Text('JP'),
              backgroundColor: Colors.green[900],
            ),
          )
        ],
      ),
      body: Center(
          child: CircleAvatar(
        maxRadius: 110,
        backgroundImage: NetworkImage(
            'https://www.nationalgeographic.com.es/medio/2022/01/05/waterfall-and-baobab-tree_3887ddc0_2000x1333.jpg'),
      )),
    );
  }
}
