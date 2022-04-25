import 'package:flutter/material.dart';

import '../../utils/categorycomponent.dart';
import '../../utils/colors.dart';
import '../../utils/textstyles.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
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
            child: Center(child: Text('Category', style: headerStyle,),),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Popular Account',style: newsTitle,),
                Icon(Icons.arrow_forward_ios_rounded,size: 15,)
              ],
            ),
            const SizedBox(height: 15,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Flexible(child: CategoryComponent(newsOutlet: 'BBC News',newsLogo: 'assets/images/bbc-svgrepo-com.svg',)),
                    Flexible(child: CategoryComponent(newsOutlet: 'CNN News',newsLogo: 'assets/images/cnn-1.svg',)),
                    Flexible(child: CategoryComponent(newsOutlet: 'CNBC', newsLogo: 'assets/images/cnbc-6.svg',)),
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Flexible(child: CategoryComponent(newsOutlet: 'MSN News', newsLogo: 'assets/images/msn.svg',)),
                    Flexible(child: CategoryComponent(newsOutlet: 'Feedly',newsLogo: 'assets/images/feedly.svg',)),
                    Flexible(child: CategoryComponent(newsOutlet: 'Metro',newsLogo: 'assets/images/metro-8.svg',)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Recommendation',style: newsTitle,),
                Icon(Icons.arrow_forward_ios_rounded,size: 15,)
              ],
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Flexible(child: CategoryComponent(newsOutlet: 'Al Jezera', newsLogo: 'assets/images/aljazeere-tv.svg',)),
                Flexible(child: CategoryComponent(newsOutlet: 'Sky News',newsLogo: 'assets/images/skynews.svg',)),
                Flexible(child: CategoryComponent(newsOutlet: 'News Pro',newsLogo: 'assets/images/news-pro.svg',)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
