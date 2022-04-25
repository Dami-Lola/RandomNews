import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

import '../../../config/apiclient.dart';
import '../../../model/newsmodel.dart';
import '../../../utils/colors.dart';
import '../../../utils/newsdetailcomponent.dart';
import '../../../utils/newscomponent.dart';
import '../../../utils/textstyles.dart';
import '../../../utils/utils.dart';
import 'home_screen_store.dart';

class TechCrunchNewsPage extends StatefulWidget {

  final ApiClient? api;
  const TechCrunchNewsPage({Key? key,this.api}) : super(key: key);

  @override
  _TechCrunchNewsPageState createState() => _TechCrunchNewsPageState();
}

class _TechCrunchNewsPageState extends State<TechCrunchNewsPage> {

  HomeScreenStore store = HomeScreenStore();

  @override
  void initState() {
    store.getTechCrunchNews(widget.api!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        final techCrunch = store.techCrunchNewsList?.status;
        switch (techCrunch) {
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
            List<NewsModel> newsList = store.techCrunchNewsList?.result ?? [];

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
                    showModalBottomSheet(context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        builder: (context){
                          return Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                            child: SizedBox(
                              height: 450,
                              child: ListView(
                                  children: [
                                    Text('${newsList[index].title}',
                                      softWrap: true,
                                      textAlign: TextAlign.center,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: newsTitle,
                                    ),
                                    const SizedBox(height: 10,),
                                    newsList[index].urlToImage != null ?
                                    Container(
                                      height: 200,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                                        image: DecorationImage(
                                            image: NetworkImage('${newsList[index].urlToImage}'),
                                            fit: BoxFit.fill),
                                      ),
                                    ): Container(
                                      height: 100,
                                      width: 100,
                                      decoration: const BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                    ),
                                    const SizedBox(height: 10,),
                                    Container(
                                      height: 120,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300.withOpacity(0.5),
                                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: const BoxDecoration(
                                              color: black800,
                                              borderRadius: BorderRadius.all(Radius.circular(5)),
                                            ),
                                            width: 10,
                                            margin: const EdgeInsets.all(5),
                                          ),
                                          Flexible(child: Text('${newsList[index].description}', style: publishDate,))
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.arrow_drop_down_sharp, color: Colors.red,),
                                        NewsDetailComponent(sourcename: newsList[index].source?.name, publishdate: Utils.publishDateAndTime(newsList[index].publishedAt),),
                                      ],
                                    ),
                                    const SizedBox(height: 10,),
                                    newsList[index].content != null?
                                    Text('${newsList[index].content}',
                                      textAlign: TextAlign.left,
                                      style: newsContent,
                                    ):
                                    Text('${newsList[index].description}',
                                      textAlign: TextAlign.left,
                                      style: newsContent,)
                                  ]
                              ),
                            ),
                          );
                        });
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
