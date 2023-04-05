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
  });
  final TextField tf;
  final String numberOfTime;
  final void Function() numBotton;
  final void Function() cancelBotton;
  final void Function() startBotton;
  final void Function() stopBotton;
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
            startBotton: startBotton, stopBotton: stopBotton),
      ],
    );
  }
}
