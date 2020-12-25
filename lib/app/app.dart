import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mercado_livre/app/routing.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _primaryColor = Color(0xFFffdb15);

  @override
  void initState() {
    super.initState();
    // Setting up the statusbar to be transparent
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.black.withOpacity(0.05),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      onGenerateRoute: onGenerate,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: _primaryColor,
        cursorColor: Colors.black,
        splashColor: Colors.yellow,
      ),
    );
  }
}
