import 'package:flutter/cupertino.dart';

class BottomNavigationImage extends StatelessWidget {
  final imageName;
  final color;

  const BottomNavigationImage(this.imageName, this.color) : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        width: 22,
        height: 22,
        child: ImageIcon(
          AssetImage(imageName),
          color: color,
        ),
      ),
    );
  }
}