import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  const DrawerListTile({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 34,
        color: Colors.black87,
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.black87,
            letterSpacing: 0.5,
            fontSize: 15,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
