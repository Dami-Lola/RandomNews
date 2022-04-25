import 'package:flutter/material.dart';
import 'package:newsupdate/utils/textstyles.dart';
import 'colors.dart';

class NewsDetailComponent extends StatelessWidget {
  final String? sourcename;
  final String? publishdate;

  const NewsDetailComponent({Key? key, this.sourcename, this.publishdate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Flexible(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child:
              RichText(
                text: TextSpan(
                  text: '$sourcename',
                  style: newsAuthor,
                  children: <TextSpan>[
                    TextSpan(
                        text: ' $publishdate',
                        style: publishDate),
                  ],
                ),
              )
            ),
          ],
        ),
      );
  }
}
