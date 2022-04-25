import 'package:flutter/material.dart';
import 'package:newsupdate/utils/textstyles.dart';

class ProfileComponentOne extends StatelessWidget {

  final String? numBer;
  final String? title;
  const ProfileComponentOne({Key? key,this.numBer,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$numBer',style: publishDate,),
        Text('$title',style: profileLikes,),
      ],
    );
  }
}
