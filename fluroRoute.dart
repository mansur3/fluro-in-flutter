import 'package:fluro/fluro.dart';
import 'package:fluro_implement_flutter/firstPage.dart';
import 'package:fluro_implement_flutter/secondPage.dart';
import 'package:flutter/cupertino.dart';


final router = FluroRouter();

// var FirstHandler = Handler(handlerFunc: ( BuildContext? context, Map<String, dynamic> params) {
//   return FirstPage();
// });

void defineRoutes(FluroRouter router) {
  router.define("/firstPage", handler: Handler(handlerFunc: ( BuildContext? context, Map<String, dynamic> params) {
    return FirstPage();
  }));


  router.define("/secondPage", handler: Handler(handlerFunc : (BuildContext? context, Map<String, dynamic> params) {
    return SecondPage();
  }));

  // it is also possible to define the route transition to use
  // router.define("users/:id", handler: usersHandler, transitionType: TransitionType.inFromLeft);
}


class RouteGenerator {
  static void configureRoutes(FluroRouter router) {
    defineRoutes(router);
  }
}