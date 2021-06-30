import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import '../main_categories_list_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedTab = 0;

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
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
        body: Stack(
          children: [
            Center(
              child: Image(
                image: AssetImage('images/dunker.png'),
              ),
            ),
            IndexedStack(
              index: _selectedTab,
              children: [
                Text('Поиск'),
                MainCategoriesListWidget(),
                Text('настройки'),
              ],
            ),
          ],
        ),
        bottomNavigationBar: FloatingNavbar(
          borderRadius: 25,
          backgroundColor: Colors.white30,
          selectedBackgroundColor: Colors.white60,
          items: [
            FloatingNavbarItem(icon: Icons.search, title: 'Search'),
            FloatingNavbarItem(icon: Icons.home, title: 'Home'),
            FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
          ],
          currentIndex: _selectedTab,
          onTap: onSelectedTab,
        ),
      ),
    );
  }
}
