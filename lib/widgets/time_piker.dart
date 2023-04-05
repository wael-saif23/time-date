import 'package:flutter/material.dart';

class TimePicker extends StatelessWidget {
  TimePicker({
    super.key,
    required this.tf,required this.numBotton, required this.cancelBotton,
  });
  final TextField tf;
  final void Function() numBotton;
  final void Function() cancelBotton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: cancelBotton,
          child: Icon(Icons.cancel),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Container(
            height: 40,
            width: 70,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                border: Border.all()),
            child: tf),
        SizedBox(
          width: 16,
        ),
        ElevatedButton(
          onPressed: numBotton,
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
