import 'package:design_airbnb/utils/constants.dart';
import 'package:design_airbnb/utils/data_source.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'nearby_tile.dart';

class GridItemCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final leftMargin = screenSize.width - screenSize.width * 0.94;
    var _pageController = PageController(
      initialPage: 1,
      viewportFraction: 0.69,
    );

    return Container(
      width: screenSize.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: leftMargin),
            child: Text(
              'Explore nearby',
              style: TextStyle(
                fontSize: 22,
                color: COLOR_GRAY_1,
                fontFamily: FONT_BOLD,
              ),
            ),
          ),
          EmptySpace(height: 20.0),
          /*SizedBox(
            width: double.infinity,
            height: screenSize.width * 0.2,
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: nearByImages.length,
                controller: _pageController,
                pageSnapping: true,
                itemBuilder: (context, index) {
                  return NearByTile(nearByImages[index]);
                }),
          )*/
          SizedBox(
            width: double.infinity,
            height: screenSize.width * 0.4,
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.28,
                    crossAxisSpacing: 2),
                itemCount: nearByImages.length,
                padding: EdgeInsets.only(
                  left: leftMargin - 8,
                  right: leftMargin,
                ),
                itemBuilder: (context, index) {
                  return NearByTile(nearByImages[index]);
                }),
          )
        ],
      ),
    );
  }
}
