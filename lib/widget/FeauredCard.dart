import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pro/pages/detailRecipe.dart';
import 'package:pro/utilites/ToolsUtilites.dart';

class FeauredCard extends StatelessWidget {
  const FeauredCard({
    Key key,
    @required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailsRecipe()),
          );
        },
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
              padding: const EdgeInsets.only(top: 197.0),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Colors.redAccent,
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
