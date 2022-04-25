import 'package:flutter/material.dart';
import 'package:newsupdate/utils/textstyles.dart';

import 'colors.dart';

class ExploreComponent extends StatelessWidget {

  final String? title;
  final String? descp;
  final String? imageString;
  const ExploreComponent({Key? key,this.title,this.descp,this.imageString}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8,right: 8),
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white
      ),
      child: Row(
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('$imageString',width: 100,)
          ),
          const SizedBox(width: 10,),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('$title',style: newsTitle,),
                Text('$descp',style: dateMessage,),
              ],
            ),
          ),
          Container(
            width: 50,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: lightGray
            ),
            child: const Center(child: Text('Save',style: followText,)),
          ),
        ],
      ),
    );
  }
}
