import 'package:flutter/material.dart';

class ControlCounterDown extends StatelessWidget {
  const ControlCounterDown({super.key, required this.startBotton, required this.stopBotton});
final void Function() startBotton;
final void Function() stopBotton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: startBotton,
          child: Text(
            "Start",
            style: TextStyle(fontSize: 16),
          ),
          style: ElevatedButton.styleFrom(
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(16)),
          ),
        ),
        SizedBox(
          width: 48,
        ),
        ElevatedButton(
          onPressed: stopBotton,
          child: Text(
            "Stop",
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
