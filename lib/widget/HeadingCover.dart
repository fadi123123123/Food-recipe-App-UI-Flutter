import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pro/utilites/ToolsUtilites.dart';

class HeadingCover extends StatelessWidget {
  const HeadingCover({
    Key key,
    @required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.30,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ToolsUtilites.mainColor,
            image: DecorationImage(
                image: AssetImage('Im/italianpi.jpg'), fit: BoxFit.cover),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 162.0, left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Daily New Recipe ",
                style: TextStyle(color: ToolsUtilites.whiteColor, fontSize: 15),
              ),
              Text(
                "Discovery Now ",
                style: TextStyle(
                    color: ToolsUtilites.whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }
}
