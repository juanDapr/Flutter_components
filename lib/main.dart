import 'package:fl_components/routes/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material APP',
      //home: const Listview2Screen(),
      initialRoute: AppRoutes.initialRoutes,
      routes: AppRoutes.getMenuRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      /*theme: ThemeData.light().copyWith(
          primaryColor: Colors.indigo,
          appBarTheme: AppBarTheme(color: Colors.amberAccent)),*/
      theme: Apptheme.lightTheme,
    );
  }
}
