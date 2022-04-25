import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/colors.dart';
import '../../utils/default_strings.dart';
import '../../utils/explorecomponent.dart';
import '../../utils/explorecomponenttwo.dart';
import '../../utils/postpagecomponent.dart';
import '../../utils/textstyles.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
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
          child: Center(child: Text('Explore', style: headerStyle,),),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.55,
              padding: const EdgeInsets.only(right: 10.0, top: 5.0, bottom: 5.0),
              height: 48.0,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xffE2E2EA),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: TextFormField(
                  style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'PTSerifRegular',
                      color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: SvgPicture.asset(
                      'assets/images/search-svgrepo-com.svg',
                      height: 20,
                      width: 20,
                    ),
                    prefixIconConstraints: const BoxConstraints(
                        minHeight: 24,
                        minWidth: 24
                    ),
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: (v) {},
                ),
              ),
            ),
            const SizedBox(height: 15,),
            const Text('Popular Category',style: newsTitle,),
            const SizedBox(height: 15,),
            const ExploreComponent(title: 'Education',imageString: 'assets/images/chris-lawton-5IHz5WhosQE-unsplash.jpg',descp: 'Bottom sheet is a nice component given by Material design.',),
            const ExploreComponent(title: 'Business',imageString: 'assets/images/finn-hackshaw-FQgI8AD-BSg-unsplash.jpg',descp: 'A container for a Scrollable that responds to drag gestures and then scrolling',),
            const ExploreComponent(title: 'Political',imageString: 'assets/images/greg-rakozy-oMpAz-DN-9I-unsplash.jpg',descp: 'In Flutter application, we usually set the bottom navigation bar in conjunction.',),
            const SizedBox(height: 15,),
            const Text('Popular Category',style: newsTitle,),
            const SizedBox(height: 15,),
            const ExploreComponentTwo(postTime: '3h',postImage: 'assets/images/lucas-santos-XIIsv6AshJY-unsplash (1).jpg',postMessage: explorMessageTwo,),
          ],
        ),
      ),
    );
  }
}
