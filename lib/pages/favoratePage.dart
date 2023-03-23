import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro/utilites/ToolsUtilites.dart';

class FavoratePage extends StatefulWidget {
  @override
  _FavoratePageState createState() => _FavoratePageState();
}

class _FavoratePageState extends State<FavoratePage> {
  List<int> favIcon = [1, 3, 7];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ToolsUtilites.mainColor,
        title: Text("favorite"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: GridView.count(
          crossAxisCount: 1,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          children: [
            for (var c in favIcon) _feuredCard(c),
          ],
        ),
      ),
    );
  }

  Widget _feuredCard(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: ToolsUtilites.mainColor,
              image: DecorationImage(
                  image: AssetImage('Im/italianpi.jpg'), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 333.0),
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.transparent.withOpacity(0.5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 3.0),
                      child: Text(
                        "Title Recipe ",
                        style: TextStyle(
                            color: ToolsUtilites.whiteColor, fontSize: 20),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.restaurant,
                              color: ToolsUtilites.whiteColor,
                              size: 17,
                            ),
                            Text(
                              "Category ",
                              style: TextStyle(
                                  color: ToolsUtilites.whiteColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: favIcon.contains(index)
                                  ? Colors.red[800]
                                  : ToolsUtilites.whiteColor,
                              size: 20,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
