import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newsupdate/screens/profilescreen/addnews.dart';
import '../../utils/colors.dart';
import '../../utils/default_strings.dart';
import '../../utils/postpagecomponent.dart';
import '../../utils/profilecomponenonet.dart';
import '../../utils/textstyles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGray,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        textTheme: Theme.of(context)
            .textTheme
            .copyWith(bodyText1: const TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Align(
            alignment: Alignment.topLeft,
            child: Center(child: Text('Profile', style: headerStyle,))),
      ),
      // backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/account-avatar-profile-user-8-svgrepo-com.svg',
                  height: 80,
                  width: 80,
                ),
                const SizedBox(width: 20,),
                Flexible(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ProfileComponentOne(title: 'Following',numBer: '100'),
                          ProfileComponentOne(title: 'Follower',numBer: '425k'),
                          ProfileComponentOne(title: 'Post',numBer: '108k'),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Container(
                        width: double.infinity,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                          color: Colors.white
                            ),
                        child: const Center(child: Text('Edit Profile',style: editProfile,)),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            const Text('Jimmy Sulivian', style: profileName,),
            const Text(profileMessageText,style: profileMessage,),
            Container(
              width: double.infinity,
              height: 2,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200
              ),
            ),
            Expanded(child:
            ListView(
              children: const[
                PostPageComponent(postTime: '2d',postImage: 'assets/images/raimond-klavins-uAk731NvaJo-unsplash.jpg',postMessage: postMessageOne,),
                PostPageComponent(postTime: '4d',postImage: 'assets/images/davisuko-5E5N49RWtbA-unsplash.jpg',postMessage: postMessageTwo,),
                PostPageComponent(postTime: '10d',postImage: 'assets/images/jason-leung-Xaanw0s0pMk-unsplash.jpg',postMessage: postMessageThree,),
              ],
            ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
          child: SvgPicture.asset(
            'assets/images/edit-svgrepo-com.svg',
            color: Colors.white,
            height: 20,
            width: 20,
          ),
          backgroundColor: Colors.red,
          onPressed: (){
            Navigator.of(context).pushNamed(AddNewsPage.routeName);
            // final snackBar = SnackBar(
            //   content: const Text('News snackbar'),
            //   action: SnackBarAction(
            //     label: 'Okay',
            //     onPressed: () {
            //     },
            //   ),
            // );
            //
            // ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }),
    );
  }
}
