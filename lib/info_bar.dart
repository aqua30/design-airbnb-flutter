import 'package:design_airbnb/utils/constants.dart';
import 'package:flutter/cupertino.dart';

class InfoBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      color: COLOR_GRAY_1,
      width: screenSize.width,
      height: 35,
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            "Get the latest on our COVID-19 response",
            style: TextStyle(
              fontSize: 11,
              color: COLOR_GRAY_2,
              decoration: TextDecoration.underline,
              fontFamily: FONT_SEMI_BOLD,
            ),
          ),
        ),
      ),
    );
  }

}