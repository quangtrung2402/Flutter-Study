import 'package:flutter/cupertino.dart';

class IconTile extends StatelessWidget {
  final String imgPath;
  final Color backgroundColor;

  IconTile([this.imgPath, this.backgroundColor]);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Image.asset(
          imgPath,
          width: 20,
        ),
      ),
    );
  }
}
