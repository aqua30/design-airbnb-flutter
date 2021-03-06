import 'package:design_airbnb/views/image_carousel_tile.dart';
import 'package:design_airbnb/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {

  final heading, subHeading;
  final carouselDataList;

  ImageCarousel({@required this.heading, this.subHeading, @required this.carouselDataList});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final leftMargin = screenSize.width - screenSize.width * 0.94;

    return Container(
      width: screenSize.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: leftMargin),
            child: Text(
              heading,
              style: TextStyle(
                fontSize: 22,
                color: COLOR_GRAY_1,
                fontFamily: FONT_BOLD,
              ),
            ),
          ),
          Visibility(
            visible: !(subHeading == null),
            child: Padding(
              padding: EdgeInsets.only(left: leftMargin, top: 8),
              child: Text(
                subHeading?? '',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontFamily: FONT_REGULAR,
                ),
              ),
            ),
          ),
          EmptySpace(height: 20.0),
          SizedBox(
            width: double.infinity,
            height: screenSize.width * 0.85,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: carouselDataList.length,
                padding: EdgeInsets.only(
                  left: leftMargin - 8,
                  right: leftMargin,
                ),
                itemBuilder: (context, index) {
                  return ImageCarouselTile(carouselDataList[index]);
                }),
          )
        ],
      ),
    );
  }
}
