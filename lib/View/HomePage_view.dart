import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:shortcut_xkcd/View/favourites_view.dart';
import 'package:shortcut_xkcd/View/comics_view.dart';
import 'package:shortcut_xkcd/View/settings_view.dart';
import 'package:shortcut_xkcd/config/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();

  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox.expand(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => currentIndex = index);
          },
          children: <Widget>[ComicsView(), SettingsView(), FavoritesView()],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() => currentIndex = index);
          _pageController?.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.image_aspect_ratio),
            title: Text("Comics", style: TextStyle(color: Colors.black)),
            activeColor: kPrimaryColor,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.favorite_outline),
            title: Text("Favorites", style: TextStyle(color: Colors.black)),
            activeColor: kPrimaryColor,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text("Settings", style: TextStyle(color: Colors.black)),
            activeColor: kPrimaryColor,
            inactiveColor: Colors.black,
          ),

        ],
      ),
    );
  }
}
