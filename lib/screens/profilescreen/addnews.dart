import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/inputfield.dart';
import '../../utils/textstyles.dart';
import 'add_news_store.dart';

class AddNewsPage extends StatefulWidget {
  static const routeName = '/AddNewsPage';

  const AddNewsPage({Key? key}) : super(key: key);

  @override
  State<AddNewsPage> createState() => _AddNewsPageState();
}

class _AddNewsPageState extends State<AddNewsPage> {

  NewNewsStore store = NewNewsStore();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        textTheme: Theme.of(context)
            .textTheme
            .copyWith(bodyText1: const TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,
        title:  Align(
          alignment: Alignment.topLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                  child: const Icon(Icons.arrow_back_ios_outlined,color: Colors.grey,)),
              const Center(child: Text('Create News', style: headerStyle,),),
              const SizedBox(width: 10,)
            ],
          ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ListView(
                children: <Widget>[
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'News Title',
                        style: TextStyle(color: Colors.grey,fontFamily: 'PTSerifRegular',),
                      )),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 10.0, top: 5.0, bottom: 5.0),
                    height: 75.0,
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
                      child: Observer(
                        builder: (_) =>
                            InputField(
                              maxLines: 3,
                              minLines: 2,
                              onChanged: (v) {
                                store.newsTitle = v;
                              },
                              message: store.error.newsTitle,
                              error: store.error.newsTitle != null,
                            ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),

                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Short Description',
                        style: TextStyle(color: Colors.grey,fontFamily: 'PTSerifRegular',),
                      )),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 10.0, top: 5.0, bottom: 5.0),
                    height: 150.0,
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
                      child: Observer(
                        builder: (_) =>
                            InputField(
                              minLines: 4,
                              maxLines: 5,
                              onChanged: (v) {
                                store.shortDescription = v;
                              },
                              message: store.error.shortDescription,
                              error: store.error.shortDescription != null,
                            ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),

                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'News Content',
                        style: TextStyle(color: Colors.grey,fontFamily: 'PTSerifRegular',),
                      )),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 10.0, top: 5.0, bottom: 5.0),
                    height: 200.0,
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
                      child: Observer(
                        builder: (_) => InputField(
                          maxLines: 7,
                          minLines: 5,
                          onChanged: (v) {
                            store.newsContent = v;
                          },
                          message: store.error.newsContent,
                          error: store.error.newsContent != null,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                store.submit(context);
              },
              child: Text('Submit'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                elevation: 4,
                padding: EdgeInsets.only(left: 50,right: 50, top: 8, bottom: 8)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
