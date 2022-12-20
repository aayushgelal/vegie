import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Outlined_Button extends StatelessWidget {
  final String title;
  const Outlined_Button({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        ),
      ),
      margin: EdgeInsets.only(right: 10, top: 10),
      height: 40,
      padding: EdgeInsets.all(10),
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey, width: 1)),
    );
  }
}
