import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tikiz/components/Drawer.dart';
import 'package:tikiz/components/single_product.dart';
import 'package:tikiz/models/fake_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffd9dad9),
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text(
            "Home",
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          backgroundColor: Theme.of(context).backgroundColor,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xffdfd181),
                child: IconButton(
                  icon: Icon(
                    Icons.shopping_basket,
                    size: 25,
                    color: Colors.green.shade900,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xffdfd181),
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  size: 25,
                  color: Colors.green.shade900,
                ),
                onPressed: (() {}),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 170,
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(colors: [
                          Colors.green.shade900.withOpacity(0.5),
                          Theme.of(context).backgroundColor.withOpacity(0.5)
                        ])),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Center(
                            child: Text(
                              'Offer',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Theme.of(context).backgroundColor,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50))),
                        ),
                        Expanded(
                            child: Container(
                          padding: EdgeInsets.only(left: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('30% OFF',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                      letterSpacing: 4,
                                      fontWeight: FontWeight.w700)),
                              Text("On all fruits",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      letterSpacing: 4,
                                      fontWeight: FontWeight.w400))
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('asset/vegetable.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Herbal Seasonings',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: Herbs.length,
                      itemBuilder: (context, index) {
                        return SingleProduct(
                            name: Herbs[index].Name,
                            image: Herbs[index].Image,
                            onTap: Herbs[index].onTap);
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Fresh Fruits',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: Fruits.length,
                      itemBuilder: (context, index) {
                        return SingleProduct(
                            name: Fruits[index].Name,
                            image: Fruits[index].Image,
                            onTap: Fruits[index].onTap);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
