import 'package:flutter/material.dart';

import 'package:ved_resume_web_app/view/methods/launchUrl.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List mySkills = [
      "Flutter",
      "Amazon Web Services (AWS)",
      "Firebase",
      "Jenkins",
      "Docker",
      "Kubernetes",
      "Ansible",
      "React",
      "React-Native",
      "Machine Learning"
    ];
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    Widget InternCard(String companyName, String Jobtitle, String Discription) {
      return Container(
        decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(20),
            border: Border.all(
                width: 2,
                color: Theme.of(context).textTheme.headline2!.color!)),
        height: h * 0.2,
        width: w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              companyName,
              style: TextStyle(
                  fontSize: w < 600 ? 20 : 30,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).textTheme.headline2!.color),
            ),
            Text(Jobtitle),
            Text(Discription)
          ],
        ),
      );
    }

    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              color: Theme.of(context).cardTheme.color,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Theme.of(context).textTheme.headline2!.color!,
                    width: 1),
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Theme.of(context).backgroundColor,
                    backgroundImage: AssetImage("assets/my_photo.jpg"),
                    radius: w * 0.125,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Vedansh Shrivastava",
                        style: TextStyle(
                            fontSize: w < 600 ? 30 : 40,
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).textTheme.headline2!.color),
                      ),
                      Text(
                        "B.Tech. - Electronics & Communication Engineering",
                        style: TextStyle(
                            fontSize: w < 600 ? 30 : 40,
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).textTheme.headline2!.color),
                      ),
                      Text(
                        "Ph: +91-8306710869",
                        style: TextStyle(
                            fontSize: w < 600 ? 20 : 30,
                            color:
                                Theme.of(context).textTheme.headline2!.color),
                      ),
                      Text(
                        "Email: vedanshshrivastava000111@gmail.com",
                        style: TextStyle(
                            fontSize: w < 600 ? 20 : 30,
                            color:
                                Theme.of(context).textTheme.headline2!.color),
                      ),
                      Text(
                        "Kota, Rajasthan, India - 324008",
                        style: TextStyle(
                            fontSize: w < 600 ? 20 : 30,
                            color:
                                Theme.of(context).textTheme.headline2!.color),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * 0.1,
            ),
            Card(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            width: 2,
                            color:
                                Theme.of(context).textTheme.headline2!.color!)),
                    height: h * 0.1,
                    width: w,
                    child: Center(
                      child: Text(
                        "KEY EXPERTISE / SKILLS",
                        style: TextStyle(
                            fontSize: w < 600 ? 30 : 40,
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).textTheme.headline2!.color),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            width: 2,
                            color:
                                Theme.of(context).textTheme.headline2!.color!)),
                    height: h * 0.1,
                    width: w,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: w * 0.1,
                          height: h * 0.02,
                          child: Card(
                            child: Center(child: Text(mySkills[index])),
                          ),
                        );
                      },
                      itemCount: mySkills.length,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * 0.1,
            ),
            Card(
              color: Theme.of(context).cardTheme.color,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            width: 2,
                            color:
                                Theme.of(context).textTheme.headline2!.color!)),
                    height: h * 0.1,
                    width: w,
                    child: Center(
                      child: Text(
                        "Education",
                        style: TextStyle(
                            fontSize: w < 600 ? 30 : 40,
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).textTheme.headline2!.color),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            width: 2,
                            color:
                                Theme.of(context).textTheme.headline2!.color!)),
                    height: h * 0.1,
                    width: w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("B.E."),
                        Text("M.B.M. Engineering College"),
                        Text("7.4414 CGPA(Current)")
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            width: 2,
                            color:
                                Theme.of(context).textTheme.headline2!.color!)),
                    height: h * 0.1,
                    width: w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("12th Standard"),
                        Text("RBSE Board"),
                        Text("75.8%")
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            width: 2,
                            color:
                                Theme.of(context).textTheme.headline2!.color!)),
                    height: h * 0.1,
                    width: w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("10th Standard"),
                        Text("RBSE Board"),
                        Text("89.5%")
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * 0.1,
            ),
            Card(
              color: Theme.of(context).cardTheme.color,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            width: 2,
                            color:
                                Theme.of(context).textTheme.headline2!.color!)),
                    height: h * 0.1,
                    width: w,
                    child: Center(
                      child: Text(
                        "Internships",
                        style: TextStyle(
                            fontSize: w < 600 ? 30 : 40,
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).textTheme.headline2!.color),
                      ),
                    ),
                  ),
                  InternCard("Ekanomatic V Studios", "Application Developer",
                      """I have worked on 2 apps and 1 website here. I worked to improve the look and
feel of apps and connect to different APIs. the website we have we have
designed a website such that we can create apps from it.
website: https://www.cityguidespain.com/"""),
                  InternCard("Sec2hand", "App Developer",
                      """Here I worked as a flutter developer our team was working on the main app we
have improved UI for a better experience and added different small animations
and implemented Dynamic Links"""),
                  InternCard(
                      "Linux World Informatics Pvt. Ltd",
                      "Flutter Developer Trainee",
                      """My experience here was a blast. I have learned so much about Flutter, I have
learned the basics of flutter and created 5 different basic projects as part of
training.
"""),
                  InternCard(
                      "Linux World Infromatics Ptv. Ltd",
                      "Hybrid Multi Cloud Trainee",
                      """We have learned so much about what a cloud is and why it's good to use. I have
so much about AWS and then we have created different projects on it. I have
learned about private cloud Openstack and how we can use terraform to
create a multi-cloud setup."""),
                  InternCard(
                      "Linux World Infromatics Ptv. Ltd",
                      "Devops Trainee",
                      """I have learned most in this training I have learned about
Linux, Docker, Kubernetes, and about servers like Apache
I have learned tools like Grafana, Prometheus Etc.
"""),
                  InternCard(
                      "Linux World Infromatics Ptv. Ltd",
                      "MLOps Trainee",
                      """This was the very first Training I have ever done and it opened a new path for me in technology, after this I have done so much training but it was the
first and best training I ever had.
"""),
                ],
              ),
            ),
            SizedBox(
              height: h * 0.2,
            )
          ],
        ),
      ),
    );
  }
}
