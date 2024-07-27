import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoutes = 'home';
  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    MenuOption(
        route: 'listview1',
        icon: Icons.list_alt,
        name: 'listview tipo 1',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list_alt_outlined,
        name: 'listview tipo 2',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.add_alert_outlined,
        name: 'alertas',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.credit_card,
        name: 'Card',
        screen: const CardScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.supervised_user_circle,
        name: 'Avatar',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'Animated',
        icon: Icons.donut_large_outlined,
        name: 'Animated',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'Input',
        icon: Icons.supervised_user_circle,
        name: 'Inputs',
        screen: const InputScreen()),
    MenuOption(
        route: 'Slider',
        icon: Icons.slideshow,
        name: 'Slider',
        screen: const SliderScreen()),
    MenuOption(
        route: 'ListView Builder',
        icon: Icons.slideshow,
        name: 'ListView Builder',
        screen: const ListBuilderScreen()),
    MenuOption(
        route: 'new dart',
        icon: Icons.airplanemode_inactive_rounded,
        name: 'new dart',
        screen: const NewScreen()),
  ];
  static Map<String, Widget Function(BuildContext)> getMenuRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};
    routes.addAll({
      'home': (BuildContext context) => const HomeScreen(),
    });

    for (var option in menuOptions) {
      routes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return routes;
  }

  /*static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const alertScreen(),
    'card': (BuildContext context) => const cardScreen(),
  };*/
  static Route<dynamic> onGenerateRoute(settings) {
    //print(settings);
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
