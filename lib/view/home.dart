import 'package:flutter/material.dart';
import 'package:ved_resume_web_app/view/counter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.amber,
            height: h * 0.1,
            width: w * 0.1,
            child: Text(
              "Counter  $h     $w ",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Card(
            elevation: 10,
            shadowColor: Colors.blue.shade900,
            child: Container(
              height: h * 0.2,
              width: w * 0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: h * 0.1,
                        width: w * 0.15,
                        child: Center(
                            child: Text(
                          "COUNTER",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        )),
                      ),
                      Container(
                        height: h * 0.1,
                        width: w * 0.15,
                        child: Center(
                          child: Text(
                            "$number",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            number = number + 1;
                          });
                        },
                        child: Container(
                          height: h * 0.05,
                          width: w * 0.05,
                          child: Center(
                              child: Icon(
                            Icons.add,
                            size: 40,
                          )),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            number = number - 1;
                          });
                        },
                        child: Container(
                          height: h * 0.05,
                          width: w * 0.05,
                          child: Center(
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
