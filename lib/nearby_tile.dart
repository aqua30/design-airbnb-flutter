import 'package:design_airbnb/model/nearby_carousel_model.dart';
import 'package:design_airbnb/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NearByTile extends StatelessWidget {
  final NearByModel item;

  NearByTile(this.item);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          print('tapped');
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                child: SizedBox(
                  width: screenSize.width * 0.17,
                  height: screenSize.width * 0.17,
                  child: Image.asset(
                    item.thumbnail,
                    fit: BoxFit.fill,
                  ),
                ),
                borderRadius: BorderRadius.all(Radius.circular(13)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.destinationName,
                      style: TextStyle(
                        color: COLOR_GRAY_1,
                        fontFamily: FONT_SEMI_BOLD,
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        item.destinationDriveHours,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: FONT_LIGHT,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
