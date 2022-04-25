import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../config/apiclient.dart';
import '../../utils/colors.dart';
import '../../utils/textstyles.dart';
import '../../utils/utils.dart';
import 'newsoutlets/businessnews.dart';
import 'newsoutlets/home_screen_store.dart';
import 'newsoutlets/techcrunchnews.dart';
import 'newsoutlets/topheadlines.dart';
import 'newsoutlets/wallstreetjournalnews.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/HomeScreen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _value = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final api = Provider.of<ApiClient>(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 16,left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SvgPicture.asset(
                    'assets/images/account-avatar-profile-user-8-svgrepo-com.svg',
                    height: 40,
                    width: 40,
                  ),
                  const Text('NEWS UPDATE',
                    style: homeTitle,
                  ),
                  SvgPicture.asset(
                    'assets/images/search-svgrepo-com.svg',
                    height: 35,
                    width: 35,
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    Utils.formatedDate(),
                    style: dateMessage,
                  ),
                  Text(
                    '${Utils.greetingMessage()} Jimmy',
                    style: welcomeMessage,
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.grey.shade200,
                  border: Border.all(
                    color: Colors.grey.shade200,
                  ),
                ),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => {
                        setState(() {
                          _value = 0;
                        })
                      },
                      child: Container(
                        width: size.width / 4 - 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: _value != 0
                                ? Colors.grey.shade200
                                : Colors.white,
                            border: Border.all(
                              color: _value != 0
                                  ? Colors.grey.shade200
                                  : Colors.white,
                            )),
                        alignment: Alignment.center,
                        height: 40,
                        child: Text('Headlines',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Caros',
                              color: _value != 0
                                  ? Colors.black
                                  : Colors.black,
                            ),
                            textAlign: TextAlign.center
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => {
                        setState(() {
                          _value = 1;
                        })
                      },
                      child: Container(
                        width: size.width / 4 - 10,
                        //#7C90A91A
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: _value != 1
                                ? Colors.grey.shade200
                                : Colors.white,
                            border: Border.all(
                              color: _value != 1
                                  ? Colors.grey.shade200
                                  : Colors.white,
                            )),
                        height:40,
                        alignment: Alignment.center,

                        child: Text('Business',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Caros',
                              color: _value != 1
                                  ? Colors.black
                                  : Colors.black,
                            ),
                            textAlign: TextAlign.center
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => {
                        setState(() {
                          _value = 2;
                        })
                      },
                      child: Container(
                        width: size.width / 4 - 10,
                        //#7C90A91A
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: _value != 2
                                ? Colors.grey.shade200
                                : Colors.white,
                            border: Border.all(
                              color: _value != 2
                                  ? Colors.grey.shade200
                                  : Colors.white,
                            )),
                        height:40,
                        alignment: Alignment.center,

                        child: Text('TechCrunch',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Caros',
                              color: _value != 2
                                  ? Colors.black
                                  : Colors.black,
                            ),
                            textAlign: TextAlign.center
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => {
                        setState(() {
                          _value = 3;
                        })
                      },
                      child: Container(
                        width: size.width / 4 - 10,
                        //#7C90A91A
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: _value != 3
                                ? Colors.grey.shade200
                                : Colors.white,
                            border: Border.all(
                              color: _value != 3
                                  ? Colors.grey.shade200
                                  : Colors.white,
                            )),
                        height:40,
                        alignment: Alignment.center,

                        child: Text('Wall Street',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Caros',
                              color: _value != 3
                                  ? Colors.black
                                  : Colors.black,
                            ),
                            textAlign: TextAlign.center
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              _value == 0
                  ? Expanded(child: TopHeadLinesPage(api: api,))
                  : Container(),
              _value == 1
                  ? Expanded(child: BusinessNewsPage(api: api,))
                  : Container(),
              _value == 2
                  ? Expanded(child: TechCrunchNewsPage(api: api,))
                  : Container(),
              _value == 3
                  ? Expanded(child: WallStreetJournalNewsPage(api: api,))
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
