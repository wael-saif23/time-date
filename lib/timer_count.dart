import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:time_date_app/widgets/control-counter-down.dart';

class Timercount extends StatelessWidget {
  const Timercount({
    super.key,
    required this.hours,
    required this.minutes,
    required this.seconds,
    required this.startcountbottn,
    required this.isActive,
    required this.canselTimerCount,
    required this.isStoped,
    required this.stopTimerCount,
    required this.resumeTimerCount,
  });

  final int hours;
  final int minutes;
  final int seconds;
  final void Function() startcountbottn;
  final void Function() canselTimerCount;
  final void Function() stopTimerCount;
  final void Function() resumeTimerCount;

  final bool isActive;
  final bool isStoped;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(16)),
                    child: Center(
                      child: Text(
                        hours.toString().padLeft(2, "0"),
                        style: const TextStyle(fontSize: 32),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Hours",
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(16)),
                    child: Center(
                      child: Text(
                        minutes.remainder(60).toString().padLeft(2, "0"),
                        style: const TextStyle(fontSize: 32),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Minutes",
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(16)),
                    child: Center(
                      child: Text(
                        seconds.remainder(60).toString().padLeft(2, "0"),
                        style: const TextStyle(fontSize: 32),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Seconds",
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        isActive
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      isStoped ? resumeTimerCount() : stopTimerCount();
                     
                    },
                    child: Text(
                      isStoped ? "Resume" : "Stop Timer",
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      canselTimerCount();
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ),
                ],
              )
            : ElevatedButton(
                onPressed: () {
                   startcountbottn();
                },
                child: Text(
                  "Start",
                  style: TextStyle(fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                ),
              ),
      ],
    );
  }
}
