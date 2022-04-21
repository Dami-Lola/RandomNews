import 'package:mobx/mobx.dart';

import '../../../config/apiclient.dart';
import '../../../config/config.dart';
import '../../../model/newsmodel.dart';

part 'home_screen_store.g.dart';

class HomeScreenStore = _HomeScreenStore with _$HomeScreenStore;

abstract class _HomeScreenStore with Store {

  @observable
  ObservableFuture<List<NewsModel>>? newsHeadlinesList;

  @action
  getNewsHeadlines(ApiClient api) async {
    try {
      Map<String, dynamic> body =
      {
        "apiKey": Config.apiKey,
      };
      newsHeadlinesList = ObservableFuture(api.customGetWithQueryParams(Config.topHeadlines!, body).then(
            (res) {
          return (res["articles"] as List).map((p) => NewsModel.fromJson(p)).toList();
        },
      ));
    }
    catch (e) {
      return e;
    }
  }
}