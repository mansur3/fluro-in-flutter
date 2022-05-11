import 'package:flutter/material.dart';



class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Center(
          child: Text("This is the secondPage"),
        ),
      ),
    );
  }
}
