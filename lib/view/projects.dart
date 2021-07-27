import 'package:flutter/material.dart';
import 'package:ved_resume_web_app/data.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    Widget customGridView({int crossAxisCount = 2, required List skills}) {
      final width = MediaQuery.of(context).size.width;
      final height = MediaQuery.of(context).size.height;
      return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
        ),
        itemCount: skills.length,
        itemBuilder: (_, i) {
          return Card(
              elevation: 10,
              color: Colors.amber,
              //margin: EdgeInsets.all(width * 0.02),
              // width: 100.0,
              // height: 100.0,
              // constraints: BoxConstraints(maxHeight: 100.0, maxWidth: 100.0),
              child: Center(child: Text(skills[i])));
        },
      );
    }

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
          height: h * 0.4,
          width: w,
          child: Column(
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
                        fontSize: w * 0.015,
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
                    "Skills : ",
                    style: TextStyle(
                        fontSize: w * 0.023,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).textTheme.headline2!.color),
                  ),
                ],
              ),
              Container(
                  height: h * 0.2,
                  width: w,
                  child: customGridView(
                      skills: skills, crossAxisCount: w > 800 ? 10 : 5)),
            ],
          ),
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
