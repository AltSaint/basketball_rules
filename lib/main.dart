import 'package:basketball_rules/main_category_model.dart';
import 'package:basketball_rules/sub_categories_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:basketball_rules/screens/main_screen.dart';

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
        '/main_screen/main_to_sub': (context) {
          final arguments = ModalRoute.of(context)?.settings.arguments;
          if (arguments is MainCategory) {
            return SubCategoriesListWidget(mainCategory: arguments);
          } else {
            return Text('bruh...');
          }
        }
      },
      initialRoute: '/main_screen',
    );
  }
}
