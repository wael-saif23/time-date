import 'package:flutter/material.dart';

class TheTimeOfTheDay extends StatelessWidget {
  const TheTimeOfTheDay({super.key, required this.theDay, required this.timeOfTheDay, required this.theDate, required this.amOrBm});

 final String theDay ;
  final String timeOfTheDay ;
final  String theDate ;
 final String amOrBm;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "day is $theDay",
            style: const TextStyle(fontSize: 22),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            theDate,
            style: const TextStyle(fontSize: 22),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            timeOfTheDay,
            style: const TextStyle(fontSize: 22),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            amOrBm == "AM" ? "good day" : "good night",
            style: const TextStyle(fontSize: 22),
          ),
        ],
      ),
    );
  }
}
