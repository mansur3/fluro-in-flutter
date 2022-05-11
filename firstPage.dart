import 'package:flutter/material.dart';



class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Center(
          child: Column(
            children: [
              FlatButton(
                child: Text("Go to second page"),
                onPressed: () {
                  Navigator.pushNamed(context, '/secondPage');
                },
              ),
              Text("Take me down to the river bend take me down to the fighting end wash the poison from of my skin show me how to be whole again fly me up in the silver wing [ast the black where siren sing warm me up in the novice glow. Drop me down to the dream below. Because i am only a crack in the castle of glass hardly anything left for you to see for you to see.")
            ],
          )

        ),
      ),
    );
  }
}
