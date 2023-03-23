import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pro/utilites/ToolsUtilites.dart';

class DetailsRecipe extends StatefulWidget {
  @override
  _DetailsRecipeState createState() => _DetailsRecipeState();
}

class _DetailsRecipeState extends State<DetailsRecipe>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ToolsUtilites.mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _headCover(),
            _headContent(),
            Padding(
              padding: const EdgeInsets.only(top: 18.0, right: 30, left: 30),
              child: Container(
                height: 4,
                color: ToolsUtilites.whiteColor,
              ),
            ),
            tabsContent(),
          ],
        ),
      ),
    );
  }

  Widget _headCover() {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
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
        AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.favorite),
            ),
          ],
        ),
        Transform.translate(
            offset: Offset(0, 170),
            child: Center(
              child: Text("Recipe Name",
                  style: TextStyle(
                      color: ToolsUtilites.whiteColor, fontSize: 30.0)),
            )),
      ],
    );
  }

  Widget _headContent() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Icon(Icons.timer),
              SizedBox(
                height: 3,
              ),
              Text(
                "60 Mins",
                style: TextStyle(color: ToolsUtilites.whiteColor),
              ),
            ],
          ),
          Column(
            children: [
              Icon(FontAwesomeIcons.peopleArrows),
              //Icon(Icons.people),
              SizedBox(
                height: 3,
              ),
              Text(
                "people",
                style: TextStyle(color: ToolsUtilites.whiteColor),
              ),
            ],
          ),
          Column(
            children: [
              Icon(Icons.room_service),
              SizedBox(
                height: 3,
              ),
              Text(
                "40 Mins",
                style: TextStyle(color: ToolsUtilites.whiteColor),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget tabsContent() {
    return Column(
      children: [
        TabBar(
          indicatorColor: ToolsUtilites.whiteColor,
          controller: _tabController,
          tabs: [
            Tab(
              text: "Description",
              icon: Icon(Icons.receipt),
            ),
            Tab(
              text: "Integrations",
              icon: Icon(Icons.fastfood),
            ),
            Tab(
              text: "Video",
              icon: Icon(Icons.videocam),
            ),
          ],
        ),
        Container(
          height: 300,
          child: TabBarView(
            controller: _tabController,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ToolsUtilites.whiteColor.withOpacity(0.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Lets cooking",
                          style: TextStyle(
                            color: ToolsUtilites.mainColor,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          ToolsUtilites.description,
                          style: TextStyle(
                              color: ToolsUtilites.secondColor, fontSize: 15),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Text("Tow"),
              Text("Three"),
            ],
          ),
        )
      ],
    );
  }
}
