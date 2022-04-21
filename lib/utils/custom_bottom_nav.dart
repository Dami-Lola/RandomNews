import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'colors.dart';

const Color backgrdColor = Colors.white;

class CustomBottomNavigationBar extends StatefulWidget {
  final Color? backgroundColor;
  final List<CustomBottomNavigationItem>? children;
  final Function(int)? onChange;
  final int? currentIndex;

  const CustomBottomNavigationBar(
      {this.backgroundColor = backgrdColor,
        this.currentIndex = 0,
        this.children,
        this.onChange});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  void _changeIndex(int index) {
    if (widget.onChange != null) {
      widget.onChange!(index);
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 70,
      color: widget.backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: widget.children!.map((item) {
          var icon = item.icon;
          int index = widget.children!.indexOf(item);
          return GestureDetector(
              onTap: () {
                _changeIndex(index);
              },
              child: SvgPicture.asset(
                  'assets/images/$icon',
                  color: widget.currentIndex == index
                  ? redPrimaryColor
                  : Colors.grey,
                height: 24,
                width: 24,
              ));
        }).toList(),
      ),
    );
  }
}

class CustomBottomNavigationItem {
  final String? icon;

  CustomBottomNavigationItem(
      {this.icon});
}
