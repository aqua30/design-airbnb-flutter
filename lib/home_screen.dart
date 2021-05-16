import 'package:design_airbnb/image_carousel.dart';
import 'package:design_airbnb/info_bar.dart';
import 'package:design_airbnb/item_banner.dart';
import 'package:design_airbnb/learn_more.dart';
import 'package:design_airbnb/search_bar.dart';
import 'package:design_airbnb/utils/constants.dart';
import 'package:design_airbnb/utils/data_source.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'bottom_navigation_item.dart';
import 'grid_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  var _scrollController = ScrollController();
  var _offsetTop = 50;

  _scrollListener() {
    print('offset: ${_scrollController.offset}');
    print('position: ${_scrollController.position.pixels}');
    if(_scrollController.offset <=)
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
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: COLOR_WHITE,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: BottomNavigationImage('images/search.png', Colors.red),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: BottomNavigationImage('images/heart.png', Colors.grey),
                label: 'Whishlists',
              ),
              BottomNavigationBarItem(
                icon: BottomNavigationImage('images/airbnb.png', Colors.grey),
                label: 'Trips',
              ),
              BottomNavigationBarItem(
                icon: BottomNavigationImage('images/chat.png', Colors.grey),
                label: 'Inbox',
              ),
              BottomNavigationBarItem(
                icon: BottomNavigationImage('images/user.png', Colors.grey),
                label: 'Profile',
              ),
            ],
            selectedFontSize: 12,
            unselectedFontSize: 12,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            onTap: (value) {},
          ),
          body: Stack(
            alignment: Alignment.center,
            children: [
              ListView(
                physics: BouncingScrollPhysics(
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
                    carouselDataList: LiveAnywhereCarouselData,
                  ),
                  EmptySpace(height: 20.0),
                  LearnMoreTile(),
                  EmptySpace(height: 40.0),
                  ImageCarousel(
                    heading: 'Discover Experiences',
                    subHeading:
                        'Unique activities with local experts - in person or online.',
                    carouselDataList: ExperienceCarouselData,
                  ),
                ],
              ),
              Positioned(
                top: 50,
                child: Transform.translate(
                  offset: Offset(0, _offsetTop),
                  child: SearchBar(),
                ),
              )
            ],
          )),
    );
  }
}
