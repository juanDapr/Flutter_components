import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.access_alarms),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Laborum culpa quis reprehenderit nostrud duis labore et tempor laboris cillum. Esse dolor laborum non cillum incididunt minim dolor. Cillum duis labore ea ea ut deserunt velit adipisicing voluptate nostrud ad proident. Qui aliqua aliquip ipsum laborum ea labore et. Ad est laboris fugiat laborum veniam officia culpa.'),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('cancel'),
                ),
                TextButton(onPressed: () {}, child: const Text('ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
