import 'package:design_airbnb/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BannerItem extends StatelessWidget {
  final image, headline;

  BannerItem(this.image, this.headline);

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final imageWidth = screenSize.width * 0.91;
    final leftImageMargin = screenSize.width - imageWidth;

    return Container(
      width: screenSize.width,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EmptySpace(height: 35.0),
          Padding(
            padding: EdgeInsets.only(left: leftImageMargin),
            child: SizedBox(
              width: imageWidth,
              height: screenSize.width * 0.92,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 22, left: leftImageMargin - 5),
            child: Text(
              headline,
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w400,
                fontFamily: FONT_REGULAR,
                height: 1.5
              ),
            ),
          ),
          EmptySpace(height: 35.0),
        ],
      ),
    );
  }
}
