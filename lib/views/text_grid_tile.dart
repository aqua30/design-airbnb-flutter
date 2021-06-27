import 'package:design_airbnb/model/text_carousel_model.dart';
import 'package:design_airbnb/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextInfoTile extends StatelessWidget {
  final TextCarouselModel carouselData;

  TextInfoTile(this.carouselData);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.only(top: 0, bottom: carouselData.isHeader? 20 : 16, left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                carouselData.heading,
                style: TextStyle(
                  fontSize: 16,
                  color: COLOR_GRAY_1,
                  fontFamily: carouselData.isHeader? FONT_REGULAR: FONT_SEMI_BOLD,
                ),
              ),
              Visibility(
                visible: !(carouselData.subHeading == null),
                child: Text(
                  carouselData.subHeading?? '',
                  style: TextStyle(
                    fontSize: 14,
                    color: COLOR_GRAY_1,
                    fontFamily: FONT_REGULAR,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
