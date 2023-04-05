import 'package:flutter/material.dart';

class TimePicker extends StatelessWidget {
  TimePicker({
    super.key, required this.tf,
  });
  final TextField tf;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: 70,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              border: Border.all()),
          child: tf
        ),
        SizedBox(
          width: 16,
        ),
        ElevatedButton(
          onPressed: () {
            
          },
          child: Icon(Icons.check),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
          ),
        ),
      ],
    );
    ;
  }
}
