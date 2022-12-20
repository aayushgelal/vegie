import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String name;
  final String image;
  final Function onTap;
  const SingleProduct(
      {Key? key, required this.name, required this.image, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 180,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 2,
              child: Image(
                image: CachedNetworkImageProvider(image),
                fit: BoxFit.fitWidth,
              )),
          Expanded(
              child: Column(
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("50/50gm"),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(children: [
                  Expanded(
                    child: Container(
                      child: Center(
                        child: Text(
                          "50 gram",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                      margin: EdgeInsets.only(right: 10),
                      height: 30,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 1)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 30,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.remove,
                            size: 15,
                          ),
                          Text(
                            "1",
                            style: TextStyle(
                                color: Theme.of(context).backgroundColor),
                          ),
                          Icon(
                            Icons.add,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ))
            ],
          )),
        ],
      ),
    );
  }
}
