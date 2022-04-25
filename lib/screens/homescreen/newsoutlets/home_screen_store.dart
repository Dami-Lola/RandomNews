import 'package:mobx/mobx.dart';

import '../../../config/apiclient.dart';
import '../../../config/config.dart';
import '../../../model/newsmodel.dart';

part 'home_screen_store.g.dart';

class HomeScreenStore = _HomeScreenStore with _$HomeScreenStore;

abstract class _HomeScreenStore with Store {

  @observable
  ObservableFuture<List<NewsModel>>? newsHeadlinesList;
  @observable
  ObservableFuture<List<NewsModel>>? businessNewsList;
  @observable
  ObservableFuture<List<NewsModel>>? techCrunchNewsList;
  @observable
  ObservableFuture<List<NewsModel>>? wallStreetNewsList;

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

  @action
  getBusinessNews(ApiClient api) async {
    try {
      Map<String, dynamic> body =
      {
        "apiKey": Config.apiKey,
      };
      businessNewsList = ObservableFuture(api.customGetWithQueryParams(Config.businessNews!, body).then(
            (res) {
          return (res["articles"] as List).map((p) => NewsModel.fromJson(p)).toList();
        },
      ));
    }
    catch (e) {
      return e;
    }
  }

  @action
  getTechCrunchNews(ApiClient api) async {
    try {
      Map<String, dynamic> body =
      {
        "apiKey": Config.apiKey,
      };
      techCrunchNewsList = ObservableFuture(api.customGetWithQueryParams(Config.techCrunchNews!, body).then(
            (res) {
          return (res["articles"] as List).map((p) => NewsModel.fromJson(p)).toList();
        },
      ));
    }
    catch (e) {
      return e;
    }
  }

  @action
  getWallStreetNews(ApiClient api) async {
    try {
      Map<String, dynamic> body =
      {
        "apiKey": Config.apiKey,
      };
      wallStreetNewsList = ObservableFuture(api.customGetWithQueryParams(Config.wallStreetJournalNews!, body).then(
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