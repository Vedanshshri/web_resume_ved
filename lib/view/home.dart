import 'package:flutter/material.dart';

import 'package:ved_resume_web_app/view/about.dart';

import 'package:ved_resume_web_app/view/commingsoon.dart';
import 'package:ved_resume_web_app/view/methods/launchUrl.dart';
import 'package:ved_resume_web_app/view/projects.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  // int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[About(), Projects(), CommingSoon()];

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: Container(
        child: Container(
          height: h * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    "assets/icons/facebook.png",
                    scale: 100,
                  ),
                  onPressed: () {
                    launchInBrowser(
                        "https://www.facebook.com/vedansh.shrivastava.56/");
                  }),
              FloatingActionButton(
                backgroundColor: Colors.transparent,
                child: Image.asset(
                  "assets/icons/github.png",
                  scale: 100,
                ),
                onPressed: () {
                  launchInBrowser("https://github.com/Vedanshshri");
                },
              ),
              FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    "assets/icons/instagram.png",
                    scale: 100,
                  ),
                  onPressed: () {
                    launchInBrowser(
                        "https://www.instagram.com/shrivastavavedansh/");
                  }),
              FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    "assets/icons/linkden.png",
                    scale: 100,
                  ),
                  onPressed: () {
                    launchInBrowser(
                        "https://www.linkedin.com/in/vedansh-shrivastava-810a6b1a4/");
                  }),
              FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    "assets/icons/twitter.png",
                    scale: 100,
                  ),
                  onPressed: () {
                    launchInBrowser("https://twitter.com/Vedansh81676067");
                  }),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        selectedItemColor: Theme.of(context).accentColor,
        elevation: 10,
        // backgroundColor: Theme.of(context).cardTheme.color,
        items: [
          BottomNavigationBarItem(label: "About", icon: Icon(Icons.info)),
          BottomNavigationBarItem(
              label: "Projects", icon: Icon(Icons.square_foot)),
          BottomNavigationBarItem(label: "Blogs", icon: Icon(Icons.message))
        ],
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(alignment: Alignment.topRight, children: [
        Center(
          child: tabWidgets.elementAt(_currentIndex),
        ),
        Visibility(
          visible: _currentIndex == 0,
          child: TextButton(
              onPressed: () {
                launchInBrowser(
                    "https://drive.google.com/file/d/1HPERs3gLx5ciq4AK1-POyV2z0jse_kzb/view?usp=sharing");
              },
              child: Text(
                "Download Resume",
                style: TextStyle(
                    fontSize: w * 0.02,
                    color: Theme.of(context).textTheme.headline2!.color),
              )),
        )
      ]),
    );
  }
}
