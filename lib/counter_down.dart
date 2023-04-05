import 'package:flutter/material.dart';

import 'package:time_date_app/widgets/control-counter-down.dart';
import 'package:time_date_app/widgets/time_piker.dart';

class CounterDown extends StatelessWidget {
  const CounterDown({super.key, required this.numberOfTime , required this.tf,});
  final TextField tf;
  final String numberOfTime;

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
          tf: tf,
        ),
        const SizedBox(
          height: 16,
        ),
        const Text("Enter your counter down time"),
        const SizedBox(
          height: 16,
        ),
        const ControlCounterDown(),
      ],
    );
  }
}
