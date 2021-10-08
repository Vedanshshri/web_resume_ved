import 'package:flutter/material.dart';
import 'package:ved_resume_web_app/data.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    Widget projectCard({
      required String title,
      required List skills,
      required String description,
    }) {
      var h = MediaQuery.of(context).size.height;
      return Card(
        color: Theme.of(context).cardTheme.color,
        shadowColor: Theme.of(context).cardTheme.shadowColor,
        child: Container(
          height: h * 0.3,
          width: w,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: w * 0.03,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).textTheme.headline2!.color),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Description : ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: w * 0.030,
                          color: Theme.of(context).textTheme.headline2!.color),
                    ),
                    Text(
                      description,
                      style: TextStyle(
                          fontSize: w * 0.015,
                          color: Theme.of(context).textTheme.headline2!.color),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Skills Involved: ",
                      style: TextStyle(
                          fontSize: w < 600 ? 24 : 30,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).textTheme.headline2!.color),
                    ),
                  ],
                ),
                Container(
                  height: h * 0.07,
                  width: w,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: skills.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: w * 0.1,
                        // height: h * 0.05,
                        child: Card(
                          child: Center(child: Text(skills[index])),
                        ),
                      );
                    },
                  ),
                ),
              ]),
        ),
      );
    }

    return ListView.separated(
      itemBuilder: (context, index) {
        var m = projects[index];
        return projectCard(
          title: m["project_title"],
          skills: m["skills"],
          description: m["description"],
        );
      },
      itemCount: projects.length,
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }
}
