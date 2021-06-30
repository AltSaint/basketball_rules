import 'package:basketball_rules/main_category_model.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class SubCategoriesListWidget extends StatefulWidget {
  // cюда я пихал переменные и после key? key
  SubCategoriesListWidget({Key? key}) : super(key: key);

  @override
  _SubCategoriesListWidgetState createState() =>
      _SubCategoriesListWidgetState();
}

class _SubCategoriesListWidgetState extends State<SubCategoriesListWidget> {
  void _onSubCategoryTap(int index, thisMainCategory) {
    final subCategory = thisMainCategory.subCategories[index];
    Navigator.of(context)
        .pushNamed('/main_screen/main_to_sub/info', arguments: subCategory);
  }

  @override
  Widget build(BuildContext context) {
    // а надо было сюда
    final arguments =
        ModalRoute.of(context)?.settings.arguments as MainCategory;
    final thisMainCategory = arguments;
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
        body: Center(
          child: Stack(
            children: [
              Center(
                child: Image(
                  image: AssetImage('images/dunker.png'),
                ),
              ),
              ListView.builder(
                physics: BouncingScrollPhysics(),
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                itemCount: thisMainCategory.subCategories
                    .length, // хочу написать mainCategory.subCategories.lenth, но он просто не видит mainCategory, который я передал на эту страницу
                itemBuilder: (BuildContext context, int index) {
                  final subCategory = thisMainCategory.subCategories[index];
                  return GlassContainer(
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
                        Colors.white.withOpacity(0.60),
                        Colors.white.withOpacity(0.10),
                        Colors.lightBlueAccent.withOpacity(0.05),
                        Colors.lightBlueAccent.withOpacity(0.6)
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
                    child: ListTile(
                      title: Text(
                        subCategory.title!,
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(subCategory.text!),
                      onTap: () {
                        print('bruh');
                        _onSubCategoryTap(index, thisMainCategory);
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
