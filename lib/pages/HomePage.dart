import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro/utilites/ToolsUtilites.dart';
import 'package:pro/widget/FeauredCard.dart';
import 'package:pro/widget/HeadingCover.dart';
import 'package:pro/widget/NewCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ToolsUtilites.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadingCover(context: context),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Featured Recipes",
                style: TextStyle(
                    color: ToolsUtilites.secondColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.40,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return FeauredCard(context: context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "New ",
                style: TextStyle(
                    color: ToolsUtilites.secondColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.26,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return NewCard(context: context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
