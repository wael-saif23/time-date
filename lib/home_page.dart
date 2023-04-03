import 'package:flutter/material.dart';
import "dart:async";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime time = DateTime.now();
  String theMonth = DateTime.now().month.toString();
  int theMonthInt = DateTime.now().month;
  String theday = DateTime.now().weekday.toString();
  int thedayInt = DateTime.now().weekday;

  List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  List<String> days = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ];
  changeEverySecond() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        time = DateTime.now();
      });
    });
  }

  changeTheMonth(int index) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        theMonth = months[index - 1];
      });
    });
  }

  changeTheday(int index) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        theday = days[index - 1];
      });
    });
  }

   hours() {
    if (time.hour > 12) {
      return time.hour - 12;
    } else {
     return  time.hour;
    }
  }

  

  @override
  void initState() {
    changeEverySecond();
    changeTheMonth(theMonthInt);
    changeTheday(thedayInt);
    hours();
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
            "today's day is $theday",
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "$theMonth ${time.day}, ${time.year}",
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "${hours().toString().padLeft(2,"0")} : ${time.minute.toString().padLeft(2,"0")} : ${time.second}",
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            time.hour>12? "good day":"good night",
            style: TextStyle(fontSize: 22),
          ),
        ],
      )),
    );
  }
}
