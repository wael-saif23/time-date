import 'package:flutter/material.dart';
import "dart:async";
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String theDay = "";
  String timeOfTheDay = "";
  String theDate = "";
String amOrBm = DateFormat("a").format(DateTime.now());
  changeEverySecond() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
         theDay = DateFormat("EEEE").format(DateTime.now());
 timeOfTheDay = DateFormat("HH : mm : ss  a").format(DateTime.now());
 theDate = DateFormat.yMMMMd().format(DateTime.now());
      });
    });
  }






  @override
  void initState() {
    changeEverySecond();
         theDay ;
 timeOfTheDay ;
 theDate ;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Time & Date App",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "today's day is $theDay",
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            theDate,
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(
            height: 24,
          ),  
          Text(
            timeOfTheDay,
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(
            height: 24,
          ),     
          Text(
            amOrBm == "AM" ? "good day":"good night",
            style: TextStyle(fontSize: 22),
          ),
        ],
      )),
    );
  }
}
