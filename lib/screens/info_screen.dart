import 'package:basketball_rules/sub_category_model.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as SubCategory;
    final thisSubCategory = arguments;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/japan_blush.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Basketball Rules'),
        ),
        body: SingleChildScrollView(
          child: GlassContainer(
            height: 125,
            width: 500,
            borderRadius: BorderRadius.circular(25.0),
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.40),
                Colors.white.withOpacity(0.10)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderGradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.50),
                Colors.white.withOpacity(0.30),
                Colors.white.withOpacity(0.25),
                Colors.white.withOpacity(0.15)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 0.39, 0.40, 1.0],
            ),
            blur: 2.0,
            borderWidth: 1,
            elevation: 3.0,
            shadowColor: Colors.black.withOpacity(0.20),
            alignment: Alignment.center,
            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  thisSubCategory.title!,
                  style: TextStyle(fontSize: 36, color: Colors.white),
                ),
                SizedBox(height: 15),
                Text(
                  thisSubCategory.text!,
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
