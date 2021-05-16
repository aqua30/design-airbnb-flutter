import 'package:design_airbnb/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LearnMoreTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width * 0.88;

    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          color: COLOR_GRAY_3,
          width: width,
          height: width * 1.25,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    EmptySpace(height: 30.0),
                    Text(
                      'Become a Host',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: FONT_EXTRA_BOLD,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Text(
                        'Earn extra income and unlock new opportunities by sharing you space.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: FONT_REGULAR,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: Colors.white,
                          width: width * 0.3,
                          height: width * 0.125,
                          child: Center(
                            child: Text(
                              'Learn more',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: FONT_BOLD,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/img_learn_more.png',
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
