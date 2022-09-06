import 'package:flutter/material.dart';

import '../dashboard.dart';
import 'drawerScreen.dart';
import 'homeScreen.dart';

class ScreenStack extends StatelessWidget {
  const ScreenStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen(),
          MyApp(),
        ],
      ),
    );
  }
}