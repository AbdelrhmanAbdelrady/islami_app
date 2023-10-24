import 'package:flutter/material.dart';
import 'package:islame2/consttheme.dart';
import 'package:islame2/tabs/radio.dart';
import 'package:islame2/tabs/ahadeth.dart';
import 'package:islame2/tabs/sebha.dart';
import 'package:islame2/tabs/quran.dart';
import 'package:islame2/tabs/seting.dart';

class homescreen extends StatefulWidget {
  static const String routeName = "Home";

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
int index=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "اسلامي",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),

          bottomNavigationBar: BottomNavigationBar(
            currentIndex:index ,
            onTap: (value) {
              index =value;
              setState(() {

              });
            },
              backgroundColor: ThemeConst.primcolor,

              items: [
                BottomNavigationBarItem(
                    icon:ImageIcon(AssetImage("assets/images/quran.png")),
                    label: "القران",
                    backgroundColor: ThemeConst.primcolor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                    label: "الأحاديث",
                    backgroundColor: ThemeConst.primcolor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/radio.png")),
                    label: "الراديو",
                    backgroundColor: ThemeConst.primcolor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                    label: "السبحة",
                    backgroundColor: ThemeConst.primcolor),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: "الاعدادات",
                    backgroundColor: ThemeConst.primcolor),
              ]),
          body:tabs[index] ,
        ),
      ],
    );
  }
 List<Widget>tabs=[QuranTab(),AhadethTab(),RadioTab(),SebhaTab(),SetingTab()];
}
