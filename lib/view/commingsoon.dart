import 'package:flutter/material.dart';

class CommingSoon extends StatelessWidget {
  const CommingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Text(
          "Comming Soon......",
          style: TextStyle(
              fontSize: w * 0.04,
              color: Theme.of(context).textTheme.headline2!.color),
        ),
      ),
    );
  }
}
