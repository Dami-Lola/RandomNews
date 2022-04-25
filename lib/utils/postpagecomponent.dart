import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newsupdate/utils/textstyles.dart';

class PostPageComponent extends StatelessWidget {

  final String? postTime;
  final String? postMessage;
  final String? postImage;
  const PostPageComponent({Key? key,this.postTime,this.postMessage,this.postImage}) : super(key: key);

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
                  'assets/images/account-avatar-profile-user-8-svgrepo-com.svg',
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
                           const Text('jimmysulivian',style: profileMessage,),
                           const SizedBox(width: 10,),
                           Image.asset('assets/images/instagram-verified-symbol-instagram-verified-logo-cross-graphics-art-transparent-png-806692.png',height: 10,width: 10,)
                         ],
                       ),
                      Text('$postTime',style: profileMessage,)
                    ],
                  ),
                )
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
