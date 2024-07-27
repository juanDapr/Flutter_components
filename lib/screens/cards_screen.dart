import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Card Widget ')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              name: 'PAISAJE HERMOSO',
              imageUrl:
                  'https://www.nationalgeographic.com.es/medio/2022/01/05/waterfall-and-baobab-tree_3887ddc0_2000x1333.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageUrl:
                  'https://www.nationalgeographic.com.es/medio/2021/12/30/kunming-provincia-de-yunnan-china_d575b3ff_2000x1125.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageUrl:
                  'https://www.nationalgeographic.com.es/medio/2022/01/05/waterfall-and-baobab-tree_3887ddc0_2000x1333.jpg',
            )
          ],
        ));
  }
}
