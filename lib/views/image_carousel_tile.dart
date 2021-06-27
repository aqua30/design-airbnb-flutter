import 'package:design_airbnb/model/image_carousel_model.dart';
import 'package:design_airbnb/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageCarouselTile extends StatelessWidget {
  final ImageCarouselModel item;

  ImageCarouselTile(this.item);

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
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                child: SizedBox(
                  width: screenSize.width * 0.68,
                  height: screenSize.width * 0.68,
                  child: Image.asset(
                    item.thumbnail,
                    fit: BoxFit.cover,
                  ),
                ),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  item.thumbnailTitle,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: FONT_SEMI_BOLD,
                  ),
                ),
              ),
              Visibility(
                visible: !(item.thumbnailSubTitle == null),
                child: Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    item.thumbnailSubTitle?? '',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontFamily: FONT_REGULAR,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
