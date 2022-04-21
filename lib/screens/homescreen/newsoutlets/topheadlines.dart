import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:newsupdate/config/apiclient.dart';
import 'package:auto_animated/auto_animated.dart';
import '../../../model/newsmodel.dart';
import '../../../utils/colors.dart';
import '../../../utils/newscomponent.dart';
import '../../../utils/utils.dart';
import 'home_screen_store.dart';

class TopHeadLinesPage extends StatefulWidget {

  final ApiClient? api;
  const TopHeadLinesPage({Key? key, this.api}) : super(key: key);

  @override
  _TopHeadLinesPageState createState() => _TopHeadLinesPageState();
}

class _TopHeadLinesPageState extends State<TopHeadLinesPage> {

  HomeScreenStore store = HomeScreenStore();

  @override
  void initState() {
    store.getNewsHeadlines(widget.api!);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        final newsHeadline = store.newsHeadlinesList?.status;
        switch (newsHeadline) {
          case FutureStatus.pending:
            return Center(
              child: Container(
                  child: const CircularProgressIndicator(
                    strokeWidth: 3,
                    valueColor: AlwaysStoppedAnimation<Color>(
                        redPrimaryColor),
                  )),
            );
          case FutureStatus.rejected:
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.center,
              child: Column(
                children: [
                  const Align(
                    child: Text(
                      "No news available",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff9B9AAC),
                        fontWeight: FontWeight.w600,
                      ),
                      softWrap: true,
                      textAlign: TextAlign.center,
                    ),
                    alignment: Alignment.center,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      store.getNewsHeadlines(widget.api!);
                    }, child: const Text('Refresh', style: TextStyle(color: Colors.white,fontFamily: 'CarosMedium', fontSize: 14),),
                    style: ElevatedButton.styleFrom(
                      primary: redPrimaryColor,
                    ),
                  )
                ],
              ),
            );

          case FutureStatus.fulfilled:
            List<NewsModel> newsList = store.newsHeadlinesList?.result ?? [];

            return LiveList(
              showItemInterval: const Duration(milliseconds: 150),
              showItemDuration: const Duration(milliseconds: 150),
              reAnimateOnVisibility: true,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: newsList.length ,
              itemBuilder: Utils.animationItemBuilder(
                ((index) => GestureDetector(
                  onTap: () async {
                  },
                  child: NewsComponentWidget(newsModel: newsList[index],),
                )
                ),
                padding: const EdgeInsets.symmetric(vertical: 8),
              ),
            );
          default:
            return const SizedBox(height: 0);
        }
      },
    );
  }
}
