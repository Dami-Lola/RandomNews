import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/textstyles.dart';
import 'buttom_nav.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/SplashScreen';

  @override
  _SplashScreenStates createState() => _SplashScreenStates();
}

class _SplashScreenStates extends State<SplashScreen> {
  @override
  void initState() {

    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushNamedAndRemoveUntil(BottomNavigator.routeName, (r) => false);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.red,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/news-svgrepo-com (1).svg',
              color: Colors.white,
            ),
            const Text('News Update',style: splashScreen,)
          ],
        ),
      ),
    );
  }
}
