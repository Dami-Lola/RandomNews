import 'package:flutter/material.dart';
import 'package:newsupdate/model/newsmodel.dart';
import 'package:newsupdate/utils/textstyles.dart';

class NewsComponentWidget extends StatelessWidget {

  final NewsModel? newsModel;
  const NewsComponentWidget({Key? key,this.newsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    child: Text('${newsModel?.title}',
                      softWrap: true,
                      textAlign: TextAlign.left,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: newsTitle,
                    ),
                  ),
                ],
              ),
              Row(
                children:[
                  const Icon(
                    Icons.newspaper_outlined,
                    color: Colors.red,
                  ),
                  const SizedBox(width: 10,),
                  newsModel?.author != null?
                  Flexible(child: Text('${newsModel?.author}',style: newsAuthor,)):
                  const Flexible(child: Text('No Author',style: newsAuthor,))
                ],
              )
            ],
          ),
        ),
        const SizedBox(width: 10,),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
                image: NetworkImage('${newsModel?.urlToImage}'),
                fit: BoxFit.fill),
          ),
        ),
      ],
    );
  }
}
