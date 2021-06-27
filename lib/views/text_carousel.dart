import 'package:design_airbnb/model/text_carousel_model.dart';
import 'package:design_airbnb/utils/constants.dart';
import 'package:design_airbnb/views/text_grid_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextGridCarousel extends StatelessWidget {

  final heading;
  final carouselData;

  TextGridCarousel(this.heading, this.carouselData);

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final leftMargin = screenSize.width - screenSize.width * 0.94;

    return Container(
      width: screenSize.width,
      color: Colors.grey.shade50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: leftMargin, top: 20),
            child: Text(
              heading,
              style: TextStyle(
                fontSize: 22,
                color: COLOR_GRAY_1,
                fontFamily: FONT_BOLD,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: screenSize.width * 0.8,
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 0.28,
                    crossAxisSpacing: 2),
                itemCount: carouselData.length,
                padding: EdgeInsets.only(
                  left: leftMargin - 8,
                  right: leftMargin,
                  top: 16,
                  bottom: 16,
                ),
                itemBuilder: (context, index) {
                  return TextInfoTile(carouselData[index]);
                }),
          )
        ],
      ),
    );
  }

}