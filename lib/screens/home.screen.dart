import 'package:flutter/material.dart';
import 'package:mercado_livre/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: CustomDrawerWidget(),
      ),
      appBar: CustomAppBar(),
    );
  }
}
