import 'package:flutter/material.dart';

class ControlCounterDown extends StatelessWidget {
  const ControlCounterDown(
      {super.key,
      required this.startBotton,
      required this.stopBotton,
      required this.isStarted, required this.resumeBotton, required this.isStoped, required this.isChooseNum});
  final void Function() startBotton;
  final void Function() stopBotton;
  final void Function() resumeBotton;
  final bool isStarted;
  final bool isStoped;
  final bool isChooseNum;

  @override
  Widget build(BuildContext context) {
    return isStarted
        ? Center(
          child: isStoped? ElevatedButton(
            onPressed: resumeBotton,
            child: Text(
              "Resume",
              style: TextStyle(fontSize: 16),
            ),
            style: ElevatedButton.styleFrom(
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
            
          
        )):ElevatedButton(
            onPressed: stopBotton,
            child: Text(
              "Stop",
              style: TextStyle(fontSize: 16),
            ),
            style: ElevatedButton.styleFrom(
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
            
          
        )))
        : Center(
          child:isChooseNum? ElevatedButton(
              onPressed: startBotton,
              child: Text(
                "Start",
                style: TextStyle(fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
              ),
            ):
            ElevatedButton(
              onPressed: (){},
              child: Text(
                "Choose Time",
                style: TextStyle(fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
              ),
            )
        );
  }
}
