import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';
import 'package:time_date_app/the_day_time.dart';

import 'counter_down.dart';

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

  String numberOfTime = "0";
  changeEverySecond() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        theDay = DateFormat("EEEE").format(DateTime.now());
        timeOfTheDay = DateFormat("hh : mm : ss  a").format(DateTime.now());
        theDate = DateFormat.yMMMMd().format(DateTime.now());
      });
    });
  }

  pickTime() {
    setState(() {
      numberOfTime = myControler.text;
    });
  }

  @override
  void initState() {
    changeEverySecond();
    theDay;
    timeOfTheDay;
    theDate;
    numberOfTime;

    super.initState();
  }

  final myControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void numBotton() {
      pickTime();
      myControler.clear();
    }

    void cancelBotton() {
      numberOfTime = "0";
    }

    TextField tf = TextField(
      controller: myControler,
      maxLines: 1,
      style: TextStyle(fontSize: 20),
      keyboardType: TextInputType.number,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Timer & Date App",
          style: TextStyle(
              fontSize: 22, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 0, bottom: 16),
                child: Divider(
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.blue,
                ),
              ),
              TheTimeOfTheDay(
                  amOrBm: amOrBm,
                  theDate: theDate,
                  theDay: theDay,
                  timeOfTheDay: timeOfTheDay),
              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Divider(
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.blue,
                ),
              ),
              CounterDown(
                cancelBotton: cancelBotton,
                numBotton: numBotton,
                tf: tf,
                numberOfTime: numberOfTime,
              ),
              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Divider(
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
