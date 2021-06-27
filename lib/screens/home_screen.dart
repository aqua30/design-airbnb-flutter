import 'package:design_airbnb/views/bottom_bar.dart';
import 'package:design_airbnb/views/image_carousel.dart';
import 'package:design_airbnb/views/info_bar.dart';
import 'package:design_airbnb/views/item_banner.dart';
import 'package:design_airbnb/views/learn_more.dart';
import 'package:design_airbnb/views/search_bar.dart';
import 'package:design_airbnb/utils/constants.dart';
import 'package:design_airbnb/utils/data_source.dart';
import 'package:design_airbnb/views/text_carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../views/grid_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  var _scrollController = ScrollController();
  var _offsetTop = 35.0;
  var _shrinkOffset = 0.0;
  var isUpScroll = true;

  /* callback which receives the offset values */
  _scrollListener() {
    print('offset: ${_scrollController.offset}');
    setState(() {
      isUpScroll = _shrinkOffset < _scrollController.offset;
      print("$isUpScroll");
      if (isUpScroll) {
        // scroll up
        if (_scrollController.offset >= _offsetTop) {
          _shrinkOffset = _offsetTop;
        } else
          _shrinkOffset = _scrollController.offset;
      } else if (_offsetTop >= _scrollController.offset) {
        _shrinkOffset = _scrollController.offset;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      _scrollListener();
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: COLOR_GRAY_1,
    ));

    return SafeArea(
      child: Scaffold(
          backgroundColor: COLOR_WHITE,
          bottomNavigationBar: BottomBar(),
          body: Stack(
            alignment: Alignment.center,
            children: [
              ListView(
                physics: ClampingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                controller: _scrollController,
                children: [
                  InfoBar(),
                  BannerItem(
                    'images/house.png',
                    'Made possible\nby Hosts',
                  ),
                  EmptySpace(height: 40.0),
                  GridItemCarousel(),
                  EmptySpace(height: 40.0),
                  ImageCarousel(
                    heading: 'Live anywhere',
                    carouselDataList: liveAnywhereCarouselData,
                  ),
                  EmptySpace(height: 20.0),
                  LearnMoreTile(),
                  EmptySpace(height: 40.0),
                  ImageCarousel(
                    heading: 'Discover Experiences',
                    subHeading:
                        'Unique activities with local experts - in person or online.',
                    carouselDataList: experienceCarouselData,
                  ),
                  TextGridCarousel('Stay informed', textCarouselData),
                ],
              ),
              Positioned(
                top: 35,
                child: Transform.translate(
                  child: Opacity(
                    child: Container(
                      height: 70,
                      color: Color.fromRGBO(0, 0, 0, 0),
                    ),
                    opacity: 1- ((_offsetTop - _shrinkOffset)/_offsetTop),
                  ),
                  offset: Offset(0, -_shrinkOffset),
                ),
              ),
              Positioned(
                top: 50,
                child: Transform.translate(
                  child: SearchBar(),
                  offset: Offset(0, -_shrinkOffset),
                ),
              ),
            ],
          )),
    );
  }
}
