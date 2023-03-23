import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pro/utilites/ToolsUtilites.dart';

class AllReceiptPage extends StatefulWidget {
  @override
  _AllReceiptPageState createState() => _AllReceiptPageState();
}

class _AllReceiptPageState extends State<AllReceiptPage> {
  List<int> favIcon = [1, 3, 7];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ToolsUtilites.mainColor,
        title: Text("All Receipts"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          children: [
            _feuredCard(0),
            _feuredCard(1),
            _feuredCard(2),
            _feuredCard(3),
            _feuredCard(4),
            _feuredCard(5),
            _feuredCard(6),
            _feuredCard(7),
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
            width: MediaQuery.of(context).size.width * 0.43,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: ToolsUtilites.mainColor,
              image: DecorationImage(
                  image: AssetImage('Im/italianpi.jpg'), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130.0),
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.43,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.transparent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Title Recipe ",
                      style: TextStyle(
                          color: ToolsUtilites.whiteColor, fontSize: 17),
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
                                  ? Colors.redAccent
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
