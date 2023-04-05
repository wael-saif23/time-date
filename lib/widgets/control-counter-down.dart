import 'package:flutter/material.dart';

class ControlCounterDown extends StatefulWidget {
  const ControlCounterDown({super.key});

  @override
  State<ControlCounterDown> createState() => _ControlCounterDownState();
}

class _ControlCounterDownState extends State<ControlCounterDown> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      ElevatedButton(
            onPressed: () {},
            child: Text("Start",style: TextStyle(fontSize: 16),),
            style: ElevatedButton.styleFrom(shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(16)),),),
            SizedBox(width: 48,),
            ElevatedButton(
            onPressed: () {},
            child: Text("Stop",style: TextStyle(fontSize: 16),),
            style: ElevatedButton.styleFrom(shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(16)),),),
    ],);
  }
}