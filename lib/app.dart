import 'package:flutter/material.dart';
import 'package:newsupdate/utils/colors.dart';

import 'utils/routers.dart';

class NewsApp extends StatefulWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  _NewsAppState createState() => _NewsAppState();
}


class _NewsAppState extends State<NewsApp> {

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eden',
      initialRoute: '/SplashScreen',
      onGenerateRoute: Routers.generateRoute,
      theme: ThemeData(
        primaryColor: redPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
