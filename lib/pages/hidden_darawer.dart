import 'package:denemeler/pages/home_page.dart';
import 'package:denemeler/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  final myTextStyle = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Colors.white
  );

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
        name: 'Homepage',
        baseStyle: myTextStyle,
        selectedStyle: myTextStyle,
            colorLineSelected: Colors.deepPurple

      ), const HomePage()
      ),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'Settings',
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
              colorLineSelected: Colors.deepPurple

          ), const SettingPage()
      )
    ];

  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.deepPurple.shade200,
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 40,
      contentCornerRadius: 50,
    );
  }
}
