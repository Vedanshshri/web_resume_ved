import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ved_resume_web_app/view/methods/launchUrl.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: h * 0.1,
            ),
            CircleAvatar(
              backgroundColor: Theme.of(context).backgroundColor,
              backgroundImage: AssetImage("assets/my_photo.jpg"),
              radius: w * 0.125,
            ),
            Text(
              "Vedansh Shrivastava",
              style: TextStyle(
                  fontSize: w * 0.05,
                  color: Theme.of(context).textTheme.headline2!.color),
            ),
            Text(
              "App/Web Developer",
              style: TextStyle(
                  fontSize: w * 0.02,
                  color: Theme.of(context).textTheme.headline2!.color),
            ),
            SizedBox(
              height: h * 0.1,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                      onPressed: () {
                        launchInBrowser(
                            "https://www.facebook.com/vedansh.shrivastava.56/");
                      },
                      icon: Image.asset(
                        "assets/icons/facebook.png",
                        scale: 100,
                      ),
                      label: Text("Facebook")),
                  TextButton.icon(
                      onPressed: () {
                        launchInBrowser("https://github.com/Vedanshshri");
                      },
                      icon: Image.asset(
                        "assets/icons/github.png",
                        scale: 100,
                      ),
                      label: Text("Github")),
                  TextButton.icon(
                      onPressed: () {
                        launchInBrowser(
                            "https://www.instagram.com/shrivastavavedansh/");
                      },
                      icon: Image.asset(
                        "assets/icons/instagram.png",
                        scale: 100,
                      ),
                      label: Text("Instagram")),
                  TextButton.icon(
                      onPressed: () {
                        launchInBrowser(
                            "https://www.linkedin.com/in/vedansh-shrivastava-810a6b1a4/");
                      },
                      icon: Image.asset(
                        "assets/icons/linkden.png",
                        scale: 100,
                      ),
                      label: Text("Linkden")),
                  TextButton.icon(
                      onPressed: () {
                        launchInBrowser("https://twitter.com/Vedansh81676067");
                      },
                      icon: Image.asset(
                        "assets/icons/twitter.png",
                        scale: 100,
                      ),
                      label: Text("Twitter")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
