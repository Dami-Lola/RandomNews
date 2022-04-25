// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeScreenStore on _HomeScreenStore, Store {
  final _$newsHeadlinesListAtom =
      Atom(name: '_HomeScreenStore.newsHeadlinesList');

  @override
  ObservableFuture<List<NewsModel>>? get newsHeadlinesList {
    _$newsHeadlinesListAtom.reportRead();
    return super.newsHeadlinesList;
  }

  @override
  set newsHeadlinesList(ObservableFuture<List<NewsModel>>? value) {
    _$newsHeadlinesListAtom.reportWrite(value, super.newsHeadlinesList, () {
      super.newsHeadlinesList = value;
    });
  }

  final _$businessNewsListAtom =
      Atom(name: '_HomeScreenStore.businessNewsList');

  @override
  ObservableFuture<List<NewsModel>>? get businessNewsList {
    _$businessNewsListAtom.reportRead();
    return super.businessNewsList;
  }

  @override
  set businessNewsList(ObservableFuture<List<NewsModel>>? value) {
    _$businessNewsListAtom.reportWrite(value, super.businessNewsList, () {
      super.businessNewsList = value;
    });
  }

  final _$techCrunchNewsListAtom =
      Atom(name: '_HomeScreenStore.techCrunchNewsList');

  @override
  ObservableFuture<List<NewsModel>>? get techCrunchNewsList {
    _$techCrunchNewsListAtom.reportRead();
    return super.techCrunchNewsList;
  }

  @override
  set techCrunchNewsList(ObservableFuture<List<NewsModel>>? value) {
    _$techCrunchNewsListAtom.reportWrite(value, super.techCrunchNewsList, () {
      super.techCrunchNewsList = value;
    });
  }

  final _$wallStreetNewsListAtom =
      Atom(name: '_HomeScreenStore.wallStreetNewsList');

  @override
  ObservableFuture<List<NewsModel>>? get wallStreetNewsList {
    _$wallStreetNewsListAtom.reportRead();
    return super.wallStreetNewsList;
  }

  @override
  set wallStreetNewsList(ObservableFuture<List<NewsModel>>? value) {
    _$wallStreetNewsListAtom.reportWrite(value, super.wallStreetNewsList, () {
      super.wallStreetNewsList = value;
    });
  }

  final _$getNewsHeadlinesAsyncAction =
      AsyncAction('_HomeScreenStore.getNewsHeadlines');

  @override
  Future getNewsHeadlines(ApiClient api) {
    return _$getNewsHeadlinesAsyncAction.run(() => super.getNewsHeadlines(api));
  }

  final _$getBusinessNewsAsyncAction =
      AsyncAction('_HomeScreenStore.getBusinessNews');

  @override
  Future getBusinessNews(ApiClient api) {
    return _$getBusinessNewsAsyncAction.run(() => super.getBusinessNews(api));
  }

  final _$getTechCrunchNewsAsyncAction =
      AsyncAction('_HomeScreenStore.getTechCrunchNews');

  @override
  Future getTechCrunchNews(ApiClient api) {
    return _$getTechCrunchNewsAsyncAction
        .run(() => super.getTechCrunchNews(api));
  }

  final _$getWallStreetNewsAsyncAction =
      AsyncAction('_HomeScreenStore.getWallStreetNews');

  @override
  Future getWallStreetNews(ApiClient api) {
    return _$getWallStreetNewsAsyncAction
        .run(() => super.getWallStreetNews(api));
  }

  @override
  String toString() {
    return '''
newsHeadlinesList: ${newsHeadlinesList},
businessNewsList: ${businessNewsList},
techCrunchNewsList: ${techCrunchNewsList},
wallStreetNewsList: ${wallStreetNewsList}
    ''';
  }
}
