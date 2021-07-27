import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:ved_resume_web_app/view/about.dart';
// import 'package:ved_resume_web_app/view/colors.dart';
import 'package:ved_resume_web_app/view/commingsoon.dart';
import 'package:ved_resume_web_app/view/methods/launchUrl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  // int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    About(),
    CommingSoon(),
    CommingSoon()
  ];

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        selectedItemColor: Theme.of(context).accentColor,
        elevation: 10,
        backgroundColor: Theme.of(context).backgroundColor,
        items: [
          BottomNavigationBarItem(label: "About", icon: Icon(Icons.info)),
          BottomNavigationBarItem(
              label: "Projects", icon: Icon(Icons.square_foot)),
          BottomNavigationBarItem(label: "Blogs", icon: Icon(Icons.message))
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(alignment: Alignment.topRight, children: [
        Center(
          child: tabWidgets.elementAt(_currentIndex),
        ),
        TextButton(
            onPressed: () {
              launchInBrowser(
                  "https://drive.google.com/file/d/1HPERs3gLx5ciq4AK1-POyV2z0jse_kzb/view?usp=sharing");
            },
            child: Text("Download Resume"))
      ]),
    );
  }
}
