import 'package:fluro/fluro.dart';
import 'package:fluro_implement_flutter/application.dart';
import 'package:flutter/material.dart';

import 'fluroRoute.dart';

void main() {

  final FluroRouter router = FluroRouter();
  RouteGenerator.configureRoutes(router);
  Application.router = router;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {



    return MaterialApp(
     onGenerateRoute: Application.router?.generator,
      home: EntryPage(),
    );
  }
}


class EntryPage extends StatefulWidget {
  const EntryPage({Key? key}) : super(key: key);

  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          child: Text("firstPage"),
          onPressed: () {
            Navigator.pushNamed(context, '/firstPage');

          },
        ),
      ),
    );
  }
}
