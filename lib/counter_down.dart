import 'package:flutter/material.dart';

import 'package:time_date_app/widgets/control-counter-down.dart';
import 'package:time_date_app/widgets/time_piker.dart';

class CounterDown extends StatelessWidget {
  const CounterDown({
    super.key,
    required this.numberOfTime,
    required this.tf,
    required this.numBotton,
    required this.cancelBotton,
    required this.startBotton,
    required this.stopBotton,
    required this.resumeBotton,
    required this.isStartedDownCount,
    required this.isStopedDownCount, required this.isChooseNum,
  });
  final TextField tf;
  final String numberOfTime;
  final void Function() numBotton;
  final void Function() cancelBotton;
  final void Function() startBotton;
  final void Function() stopBotton;

  final void Function() resumeBotton;
  final bool isStartedDownCount;
  final bool isStopedDownCount;
  final bool isChooseNum;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          numberOfTime,
          style: const TextStyle(fontSize: 32),
        ),
        const SizedBox(
          height: 16,
        ),
        TimePicker(
          cancelBotton: cancelBotton,
          numBotton: numBotton,
          tf: tf,
        ),
        const SizedBox(
          height: 16,
        ),
        const Text("Enter your counter down time"),
        const SizedBox(
          height: 16,
        ),
        ControlCounterDown(
          isChooseNum: isChooseNum,
            isStarted: isStartedDownCount,
            isStoped: isStopedDownCount,
            resumeBotton: resumeBotton,
            startBotton: startBotton,
            stopBotton: stopBotton),

      ],
    );
  }
}
