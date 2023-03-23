import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro/pages/allreceipt.dart';
import 'package:pro/utilites/ToolsUtilites.dart';
import 'package:pro/widget/HeadingCover.dart';

class CatergoriesPage extends StatefulWidget {
  @override
  _CatergoriesPageState createState() => _CatergoriesPageState();
}

class _CatergoriesPageState extends State<CatergoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ToolsUtilites.whiteColor,
      body: Column(
        children: [
          HeadingCover(context: context),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Transform.translate(
              offset: Offset(0, -30),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.54,
                decoration: BoxDecoration(
                  color: ToolsUtilites.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                //color: Colors.white,
                child: GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  children: [
                    _categoryCard('Im/ii/11.jpg'),
                    _categoryCard('Im/ii/12.jpg'),
                    _categoryCard('Im/ii/13.jpg'),
                    _categoryCard('Im/ii/14.jpg'),
                    _categoryCard('Im/ii/15.jpg'),
                    _categoryCard('Im/ii/16.jpg'),
                    _categoryCard('Im/ii/17.jpg'),
                    _categoryCard('Im/saladLogo.jpg'),
                    _categoryCard('Im/ii/19.jpg'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _categoryCard(String imageName) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AllReceiptPage()),
          );
        },
        child: Card(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ToolsUtilites.mainColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.50,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(imageName),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  "Sweets",
                  style: TextStyle(
                      color: ToolsUtilites.whiteColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
