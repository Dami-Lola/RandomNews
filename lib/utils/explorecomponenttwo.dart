import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newsupdate/utils/textstyles.dart';

import 'colors.dart';

class ExploreComponentTwo extends StatelessWidget {

  final String? postTime;
  final String? postMessage;
  final String? postImage;
  const ExploreComponentTwo({Key? key,this.postTime,this.postMessage,this.postImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/account-avatar-profile-user-4-svgrepo-com.svg',
                  height: 30,
                  width: 30,
                ),
                SizedBox(width: 10,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text('jellysweety',style: profileMessage,),
                          const SizedBox(width: 10,),
                          Image.asset('assets/images/instagram-verified-symbol-instagram-verified-logo-cross-graphics-art-transparent-png-806692.png',height: 10,width: 10,)
                        ],
                      ),
                      Text('$postTime',style: profileMessage,)
                    ],
                  ),
                ),
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
            const SizedBox(height: 15,),
            Text('$postMessage',style: profileName,),
            const SizedBox(height: 10,),
            ClipRRect(borderRadius: BorderRadius.circular(8.0),
                child: Image.asset('$postImage', ))
          ],
        ),
      ),
    );
  }
}
