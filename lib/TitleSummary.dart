import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Content.dart';
import 'IconTitle.dart';

class TitleSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(ImageAsset.doctorImg, height: 220),
        SizedBox(
          width: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width - 222,
          height: 220,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                Content.name,
                style: TextStyle(fontSize: 32)
              ),
              Text(
                Content.title,
                style: TextStyle(fontSize: 19, color: Colors.grey),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: <Widget>[
                  IconTile(ImageAsset.emailImg, Color(0xffFFECDD)),
                  IconTile(ImageAsset.callImg, Color(0xffFEF2F0)),
                  IconTile(ImageAsset.videoImg, Color(0xffEBECEF)),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
