import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pro/utilites/ToolsUtilites.dart';

class NewCard extends StatelessWidget {
  const NewCard({
    Key key,
    @required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: ToolsUtilites.mainColor,
              image: DecorationImage(
                  image: AssetImage('Im/italianpi.jpg'), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 105),
            child: Container(
              color: ToolsUtilites.whiteColor,
              height: 60,
              width: MediaQuery.of(context).size.width * 0.70,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Title Recipe ",
                      style: TextStyle(
                          color: ToolsUtilites.secondColor, fontSize: 17),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.timer,
                          color: Colors.black,
                          size: 17,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "60 min ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
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
