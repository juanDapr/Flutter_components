import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _slideEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SliderScreen & CHECKS'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 400,
              value: _sliderValue,
              activeColor: Apptheme.primary,
              onChanged: _slideEnable
                  ? (value) {
                      //print(value);
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null,
            ),
            // Checkbox(
            //   value: _slideEnable,
            //   onChanged: (value) {
            //     _slideEnable = value ?? true;
            //     setState(() {});
            //   },
            // ),
            //  Switch(
            //   activeColor: Apptheme.primary,
            //   value: _slideEnable,
            //   onChanged: (value) {
            //     setState(() {});
            //     _slideEnable = value;
            //   },
            // ),
            CheckboxListTile(
              activeColor: Apptheme.primary,
              title: const Text('Habilitar Slider'),
              value: _slideEnable,
              onChanged: (value) {
                setState(() {});
                _slideEnable = value ?? true;
              },
            ),
            SwitchListTile.adaptive(
              activeColor: Apptheme.primary,
              title: const Text('Habilitar Slider'),
              value: _slideEnable,
              onChanged: (value) {
                setState(() {});
                _slideEnable = value;
              },
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: NetworkImage(
                    'https://www.nationalgeographic.com.es/medio/2022/01/05/waterfall-and-baobab-tree_3887ddc0_2000x1333.jpg',
                  ),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            )
          ],
        ));
  }
}
