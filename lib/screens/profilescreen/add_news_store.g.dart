// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_news_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewNewsStore on _NewNewsStore, Store {
  final _$newsTitleAtom = Atom(name: '_NewNewsStore.newsTitle');

  @override
  String? get newsTitle {
    _$newsTitleAtom.reportRead();
    return super.newsTitle;
  }

  @override
  set newsTitle(String? value) {
    _$newsTitleAtom.reportWrite(value, super.newsTitle, () {
      super.newsTitle = value;
    });
  }

  final _$shortDescriptionAtom = Atom(name: '_NewNewsStore.shortDescription');

  @override
  String? get shortDescription {
    _$shortDescriptionAtom.reportRead();
    return super.shortDescription;
  }

  @override
  set shortDescription(String? value) {
    _$shortDescriptionAtom.reportWrite(value, super.shortDescription, () {
      super.shortDescription = value;
    });
  }

  final _$newsContentAtom = Atom(name: '_NewNewsStore.newsContent');

  @override
  String? get newsContent {
    _$newsContentAtom.reportRead();
    return super.newsContent;
  }

  @override
  set newsContent(String? value) {
    _$newsContentAtom.reportWrite(value, super.newsContent, () {
      super.newsContent = value;
    });
  }

  final _$_NewNewsStoreActionController =
      ActionController(name: '_NewNewsStore');

  @override
  void validateNewsTitle(String? value) {
    final _$actionInfo = _$_NewNewsStoreActionController.startAction(
        name: '_NewNewsStore.validateNewsTitle');
    try {
      return super.validateNewsTitle(value);
    } finally {
      _$_NewNewsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateShortDescription(String? value) {
    final _$actionInfo = _$_NewNewsStoreActionController.startAction(
        name: '_NewNewsStore.validateShortDescription');
    try {
      return super.validateShortDescription(value);
    } finally {
      _$_NewNewsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateNewsContent(String? value) {
    final _$actionInfo = _$_NewNewsStoreActionController.startAction(
        name: '_NewNewsStore.validateNewsContent');
    try {
      return super.validateNewsContent(value);
    } finally {
      _$_NewNewsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
newsTitle: ${newsTitle},
shortDescription: ${shortDescription},
newsContent: ${newsContent}
    ''';
  }
}

mixin _$NewNewsErrorStore on _NewNewsErrorStore, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_NewNewsErrorStore.hasErrors'))
          .value;

  final _$newsTitleAtom = Atom(name: '_NewNewsErrorStore.newsTitle');

  @override
  String? get newsTitle {
    _$newsTitleAtom.reportRead();
    return super.newsTitle;
  }

  @override
  set newsTitle(String? value) {
    _$newsTitleAtom.reportWrite(value, super.newsTitle, () {
      super.newsTitle = value;
    });
  }

  final _$shortDescriptionAtom =
      Atom(name: '_NewNewsErrorStore.shortDescription');

  @override
  String? get shortDescription {
    _$shortDescriptionAtom.reportRead();
    return super.shortDescription;
  }

  @override
  set shortDescription(String? value) {
    _$shortDescriptionAtom.reportWrite(value, super.shortDescription, () {
      super.shortDescription = value;
    });
  }

  final _$newsContentAtom = Atom(name: '_NewNewsErrorStore.newsContent');

  @override
  String? get newsContent {
    _$newsContentAtom.reportRead();
    return super.newsContent;
  }

  @override
  set newsContent(String? value) {
    _$newsContentAtom.reportWrite(value, super.newsContent, () {
      super.newsContent = value;
    });
  }

  @override
  String toString() {
    return '''
newsTitle: ${newsTitle},
shortDescription: ${shortDescription},
newsContent: ${newsContent},
hasErrors: ${hasErrors}
    ''';
  }
}
