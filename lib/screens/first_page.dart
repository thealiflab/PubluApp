import 'package:flutter/material.dart';
import 'package:publu/screens/input_page.dart';
import 'package:publu/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fp.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Welcome',
                style: kWelcomeTextStyle,
              ),
              SizedBox(
                height: 220.0,
              ),
              FlatButton(
                color: kBottomContainerColor,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(14.0),
                ),
                splashColor: Colors.white,
                padding: EdgeInsets.all(12.0),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InputPage(),
                    ),
                  );
                },
                child: Text(
                  "Let's Decide",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontFamily: 'HeadlinerNo',
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                child: Text(
                  'Developed by Alif',
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
                onTap: () async {
                  if (await canLaunch(kMyWebSiteURL)) {
                    await launch(kMyWebSiteURL);
                  } else {
                    throw 'Could not launch $kMyWebSiteURL';
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
