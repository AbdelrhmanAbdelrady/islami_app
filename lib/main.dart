import 'package:flutter/material.dart';
import 'package:islame2/consttheme.dart';
import 'package:islame2/sora_detalils.dart';

import 'abc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "Home",
      routes: {
        homescreen.routeName: (context) => homescreen()
        ,SoraDetailsScreen.routeName: (context) => SoraDetailsScreen()

      },
      theme: ThemeConst.ligthTheme,
      darkTheme: ThemeConst.darkTheme,
    );
  }
}
