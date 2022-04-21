import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Utils {

  static Widget Function(
      BuildContext context,
      int index,
      Animation<double> animation,
      )
  animationItemBuilder(
      Widget Function(int index) child, {
        EdgeInsets padding = EdgeInsets.zero,
      }) =>
          (
          BuildContext context,
          int index,
          Animation<double> animation,
          ) =>
          FadeTransition(
            opacity: Tween<double>(
              begin: 0,
              end: 1,
            ).animate(animation),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: Offset(0, -0.1),
                end: Offset.zero,
              ).animate(animation),
              child: Padding(
                padding: padding,
                child: child(index),
              ),
            ),
          );

  static String formatedDate() {
    DateTime dateTime = DateTime.now();
    String dayOfTheWeek = DateFormat(DateFormat.WEEKDAY).format(
        dateTime.toUtc());
    String monthOfTheYear = DateFormat(DateFormat.MONTH).format(
        dateTime.toUtc());
    return '$dayOfTheWeek, $monthOfTheYear ${dateTime.day}';
  }

  static String greetingMessage(){
    DateTime dateTime = DateTime.now();
    if((dateTime.hour == 00 || dateTime.hour <= 11) && (dateTime.minute == 00 || dateTime.minute <= 59)){
      return 'Good Morning';
    }
    else if((dateTime.hour == 12 || dateTime.hour <= 16) && (dateTime.minute == 00 || dateTime.minute <= 59)){
      return 'Good Afternoon';
    }
    else if((dateTime.hour == 17 || dateTime.hour <= 23) && (dateTime.minute == 00 || dateTime.minute <= 59)){
      return 'Good Evening';
    }
    return 'Good Day';
  }

  static String publishDateAndTime(String? dateTime){

    DateTime tempDate = DateFormat("yyyy-MM-dd").parse(dateTime!);
    DateFormat.yMMMEd().format(tempDate);
    // DateTime anotherDate = DateFormat("yMMMMd").parse(tempDate.toString());
    return DateFormat.yMMMEd().format(tempDate).toString();
  }
}