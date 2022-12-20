import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tikiz/components/Drawer_ListTile.dart';
import 'package:tikiz/components/Outlined_Button.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).backgroundColor,
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          DrawerHeader(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 39,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome Guest"),
                  Outlined_Button(title: "Login")
                ],
              )
            ],
          )),
          SizedBox(
            height: 20,
          ),
          DrawerListTile(title: "Home", icon: Icons.home_outlined),
          DrawerListTile(title: "Review Cost", icon: Icons.reviews_outlined),
          DrawerListTile(title: "My Profile", icon: Icons.person_outline),
          DrawerListTile(
              title: "Notification", icon: CupertinoIcons.bell_circle),
          DrawerListTile(
              title: "Rating and Review", icon: Icons.star_border_outlined),
          DrawerListTile(title: "Wishlist", icon: CupertinoIcons.heart_circle),
          DrawerListTile(
              title: "Raise a Complaint", icon: Icons.warning_amber_outlined),
          DrawerListTile(title: "FAQS", icon: Icons.question_answer_outlined),
          SizedBox(
            height: 30,
          ),
          Container(height: 1, color: Colors.black12),
          Container(
              padding: EdgeInsets.all(20),
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Contact Support",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Call us:   9861487591",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Mail us:  aayushgelal@gmail.com",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
