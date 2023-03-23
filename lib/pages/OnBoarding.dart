import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro/pages/start.dart';
import 'package:pro/utilites/OnBoardingModel.dart';
import 'package:pro/utilites/ToolsUtilites.dart';

List<OnBoardingModel> sliderData = [
  OnBoardingModel("Im/chesspi.jpg", "the First Title"),
  OnBoardingModel("Im/italianff.jpg", "the Second Title"),
  OnBoardingModel("Im/italianpi.jpg", "the Third Title"),
];

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  bool atEnd = false;
  PageController _pageController;
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
            child: PageView.builder(
          itemCount: sliderData.length,
          controller: _pageController,
          onPageChanged: (index) {
            print(index);
            if (index == (sliderData.length - 1)) {
              setState(() {
                atEnd = true;
                currentIndex = index;
              });
            } else {
              setState(() {
                atEnd = false;
                currentIndex = index;
              });
            }
          },
          itemBuilder: (context, index) {
            return Scaffold(
              backgroundColor: ToolsUtilites.mainColor,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                actions: [
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.transparent,
                    elevation: 0,
                    child: atEnd
                        ? InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StartPage()),
                              );
                            },
                            child: Text("Go To Home",
                                style: TextStyle(
                                    color: ToolsUtilites.whiteColor,
                                    fontSize: 20)),
                          )
                        : InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StartPage()),
                              );
                            },
                            child: Text(
                              "Skip",
                              style: TextStyle(
                                  color: ToolsUtilites.whiteColor,
                                  fontSize: 20),
                            ),
                          ),
                  )
                ],
              ),
              body: Column(
                children: [
                  _slideImage(),
                  _headline(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _drawDots(sliderData.length),
                  )
                ],
              ),
            );
          },
        )),
      ],
    );
  }

  Widget _slideImage() {
    return Container(
      width: 800,
      height: 350,
      decoration: BoxDecoration(
        color: ToolsUtilites.whiteColor,
        shape: BoxShape.circle,
        image: DecorationImage(
            image: ExactAssetImage(sliderData[currentIndex].image),
            fit: BoxFit.contain),
      ),
    );
  }

  Widget _headline() {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Text(
        sliderData[currentIndex].title,
        style: TextStyle(color: ToolsUtilites.whiteColor, fontSize: 30),
      ),
    );
  }

  List<Widget> _drawDots(int length) {
    List<Widget> widgets = [];

    for (int index = 0; index < length; index++) {
      widgets.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: index == currentIndex
                  ? ToolsUtilites.secondColor
                  : ToolsUtilites.whiteColor,
            ),
          ),
        ),
      );
    }
    return widgets;
  }
}
