import 'package:basketball_rules/main_category_model.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class MainCategoriesListWidget extends StatefulWidget {
  const MainCategoriesListWidget({Key? key}) : super(key: key);

  @override
  _MainCategoriesListWidgetState createState() =>
      _MainCategoriesListWidgetState();
}

class _MainCategoriesListWidgetState extends State<MainCategoriesListWidget> {
  void _onCategoryTap(int index) {
    final mainCategory = mainCategories[index];
    Navigator.of(context)
        .pushNamed('/main_screen/main_to_sub', arguments: mainCategory);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          ListView.builder(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
            itemCount: mainCategories.length,
            itemBuilder: (BuildContext context, int index) {
              final mainCategory = mainCategories[index];
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
                child: ListTile(
                  title: Text(
                    mainCategory.title,
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(mainCategory.subtitle),
                  onTap: () {
                    print('bruh');
                    _onCategoryTap(
                        index); // я пытался через routes в main.dart по примеру из 41 урока и попытался через Navigator.push, результат одинаковый
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) =>
                    //         SubCategoriesListWidget(mainCategory: mainCategory),
                    //   ),
                    // );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
