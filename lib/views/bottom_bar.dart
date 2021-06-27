import 'package:design_airbnb/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_item.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}