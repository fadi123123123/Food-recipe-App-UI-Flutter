import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pro/utilites/ToolsUtilites.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  TextEditingController _nameTextController = TextEditingController();
  TextEditingController _phoneTextController = TextEditingController();
  TextEditingController _messageTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          H_Cover(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "We Here For You :",
              style: TextStyle(
                  color: ToolsUtilites.secondColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ),
          InfoCard(
              ToolsUtilites.ourVisionParagraph, "Our Vision", "Im/salad.jpg"),
          InfoCard(
              ToolsUtilites.ourmissionParagraph, "Our mission", "Im/salad.jpg"),
          _contactFrom(),
          _socialMediaItems(),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget H_Cover() {
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
          padding: const EdgeInsets.only(top: 130.0, left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Daily New Recipe ",
                style: TextStyle(color: ToolsUtilites.whiteColor, fontSize: 30),
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

  Widget InfoCard(String infoParagraph, String title, String im) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
        ),
        Card(
          child: Column(
            children: [
              Image.asset(
                im,
                height: 350,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  infoParagraph,
                  style:
                      TextStyle(color: ToolsUtilites.secondColor, fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _customTextFiled(
      int maxLine, TextEditingController controller, String hintName) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8.0,
      ),
      child: TextField(
        maxLines: maxLine,
        controller: controller,
        decoration: InputDecoration(
          hoverColor: ToolsUtilites.secondColor,
          focusColor: ToolsUtilites.secondColor,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ToolsUtilites.secondColor),
          ),
          labelText: hintName,
          labelStyle: TextStyle(color: ToolsUtilites.secondColor),
        ),
      ),
    );
  }

  Widget _contactFrom() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Contact Us",
            style: TextStyle(color: ToolsUtilites.mainColor, fontSize: 20),
            textAlign: TextAlign.justify,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25.0, left: 25, bottom: 10),
          child: Column(
            children: [
              _customTextFiled(1, _nameTextController, "Enter Your Name"),
              _customTextFiled(1, _emailTextController, "Enter Your Email"),
              _customTextFiled(
                  1, _phoneTextController, "Enter Your Phone Number"),
              _customTextFiled(
                  1, _messageTextController, "Enter Your Message Content"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: ToolsUtilites.mainColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: FlatButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.email,
                  color: ToolsUtilites.whiteColor,
                ),
                label: Text(
                  "Send Message",
                  style: TextStyle(color: ToolsUtilites.whiteColor),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _socialMediaItems() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Follow Us",
              style: TextStyle(
                  color: ToolsUtilites.mainColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(FontAwesomeIcons.facebook, color: ToolsUtilites.secondColor),
              Icon(FontAwesomeIcons.twitter, color: ToolsUtilites.secondColor),
              Icon(FontAwesomeIcons.telegram, color: ToolsUtilites.secondColor),
              Icon(FontAwesomeIcons.instagram,
                  color: ToolsUtilites.secondColor),
              Icon(FontAwesomeIcons.youtube, color: ToolsUtilites.secondColor),
              Icon(FontAwesomeIcons.pinterest,
                  color: ToolsUtilites.secondColor),
              Icon(FontAwesomeIcons.globe, color: ToolsUtilites.secondColor),
              SizedBox(
                width: 13,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
