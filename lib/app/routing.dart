import 'package:flutter/cupertino.dart';
import 'package:mercado_livre/screens/screens.dart';

Route onGenerate(RouteSettings settings) {
  return PageRouteBuilder(
    pageBuilder: (context, anim1, anim2) => getRoute(settings.name),
  );
}

Widget getRoute(String name) {
  switch (name) {
    case '/home':
      return HomeScreen();
    default:
      return ErrorWidget('Undefined route for name $name');
  }
}
