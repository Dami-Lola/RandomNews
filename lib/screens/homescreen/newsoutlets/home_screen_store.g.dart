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

  final _$getNewsHeadlinesAsyncAction =
      AsyncAction('_HomeScreenStore.getNewsHeadlines');

  @override
  Future getNewsHeadlines(ApiClient api) {
    return _$getNewsHeadlinesAsyncAction.run(() => super.getNewsHeadlines(api));
  }

  @override
  String toString() {
    return '''
newsHeadlinesList: ${newsHeadlinesList}
    ''';
  }
}
