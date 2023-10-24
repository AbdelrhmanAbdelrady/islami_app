import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame2/soramodel.dart';

import 'consttheme.dart';

class SoraDetailsScreen extends StatefulWidget {
  static const String routeName = "SoraDetails";

  @override
  State<SoraDetailsScreen> createState() => _SoraDetailsScreenState();
}

class _SoraDetailsScreenState extends State<SoraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as soramodel;
    if (verses.isEmpty) {
      loadFile(args.index);
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
            title: Text(
          " سوره  ${args.name}",
          style: Theme.of(context).textTheme.bodyLarge,
        )),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(

            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)
            ,side: BorderSide(color: ThemeConst.primcolor)

            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                separatorBuilder: (context,index)=>Divider(
                  indent: 40,
                  endIndent:40 ,
                  thickness: 1,


                ),

                itemBuilder: (context, index) {
                  return Text(
                    verses[index],
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,
                  );
                },
                itemCount: verses.length,
              ),
            ),
          ),
        ),
      ),
    );
  }

  loadFile(int index) async {
    String file = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = file.split("\n");
    print(lines);
    verses = lines;
    setState(() {});
  }
}
