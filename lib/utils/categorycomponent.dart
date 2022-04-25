import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsupdate/utils/textstyles.dart';

import 'colors.dart';

class CategoryComponent extends StatelessWidget {

  final String? newsOutlet;
  final String? newsLogo;
  const CategoryComponent({Key? key,this.newsOutlet,this.newsLogo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: lightGray
              ),
              child: SvgPicture.asset(
                '$newsLogo',
                // color: Colors.white,
                height: 50,
                width: 50,
              ),
            ),
            const SizedBox(height: 10,),
            Text('$newsOutlet',style: publishDate,),
            const SizedBox(height: 15,),
            Container(
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: lightGray
              ),
              child: const Center(child: Text('Follow',style: followText,)),
            ),
          ],
        ),
      ),
    );
  }
}
