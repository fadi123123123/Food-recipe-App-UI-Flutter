import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro/pages/HomePage.dart';
import 'package:pro/pages/allreceipt.dart';
import 'package:pro/pages/favoratePage.dart';
import 'package:pro/pages/infoPage.dart';
import 'package:pro/utilites/ToolsUtilites.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'catigoresPage.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int _page = 0;
  GlobalKey _nenKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [
      InfoPage(),
      CatergoriesPage(),
      HomePage(),
      AllReceiptPage(),
      FavoratePage(),
    ];
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          key: _nenKey,
          index: 2,
          items: [
            Icon(Icons.info, color: ToolsUtilites.whiteColor, size: 20),
            Icon(Icons.calendar_view_day,
                color: ToolsUtilites.whiteColor, size: 20),
            Icon(Icons.whatshot, color: ToolsUtilites.whiteColor, size: 20),
            Icon(Icons.receipt, color: ToolsUtilites.whiteColor, size: 20),
            Icon(Icons.favorite, color: ToolsUtilites.whiteColor, size: 20),
          ],
          color: ToolsUtilites.mainColor,
          backgroundColor: ToolsUtilites.whiteColor,
          animationCurve: Curves.easeInOut,
          onTap: (index) {
            setState(() {
              _page = index;
            });
          }),
      body: tabs[_page],
    );
  }
}
