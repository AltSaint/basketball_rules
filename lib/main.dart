import 'package:basketball_rules/sub_categories_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:basketball_rules/screens/main_screen.dart';
import 'package:basketball_rules/screens/info_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basketball Rules',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          brightness: Brightness.dark,
          backgroundColor: Colors.white38,
          centerTitle: true,
          elevation: 0,
        ),
      ),
      routes: {
        '/main_screen': (context) => MainScreen(),
        '/main_screen/main_to_sub': (context) => SubCategoriesListWidget(),
        '/main_screen/main_to_sub/info': (context) => InfoScreen(),
      },
      initialRoute: '/main_screen',
    );
  }
}
