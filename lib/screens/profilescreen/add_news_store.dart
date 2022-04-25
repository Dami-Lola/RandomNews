

// add_news_store
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:validators/validators.dart';

part 'add_news_store.g.dart';

class NewNewsStore = _NewNewsStore with _$NewNewsStore;

abstract class _NewNewsStore with Store {
  final NewNewsErrorStore error = NewNewsErrorStore();

  @observable
  String? newsTitle;

  @observable
  String? shortDescription;

  @observable
  String? newsContent;


  @action
  void validateNewsTitle(String? value) {
    error.newsTitle = isNull(value) ? 'News title is required' : null;
  }

  @action
  void validateShortDescription(String? value) {
    error.shortDescription = isNull(value)  ? 'Short description is required' : null;
  }

  @action
  void validateNewsContent(String? value) {
    error.newsContent = isNull(value)  ? 'News content is required' : null;
  }


  List<ReactionDisposer> _disposers = [];

  void setupValidations() {
    _disposers = [
      reaction((_) => newsTitle, validateNewsTitle),
      reaction((_) => shortDescription, validateShortDescription),
      reaction((_) => newsContent, validateNewsContent),
    ];
  }

  void dispose() {
    for (final d in _disposers) {
      d();
    }
  }

  bool get hasErrors {
    validateNewsTitle(newsTitle);
    validateShortDescription(shortDescription);
    validateNewsContent(newsContent);
    return error.hasErrors;
  }


  Future<void> submit(BuildContext context) async {
    if (hasErrors) return;

      var postData =
      {
        "newsTitle": newsTitle,
        "shortDescription": shortDescription,
        "newsContent": newsContent,
      };

      if(postData['newsContent'] != null){
        // Navigator.of(context).pop();
        final snackBar = SnackBar(
          content: const Text('News successfully created'),
          action: SnackBarAction(
            label: 'Okay',
            onPressed: () {
              // Navigator.pop(context);
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
}

class NewNewsErrorStore = _NewNewsErrorStore with _$NewNewsErrorStore;

abstract class _NewNewsErrorStore with Store {
  @observable
  String? newsTitle;

  @observable
  String? shortDescription;

  @observable
  String? newsContent;


  @computed
  bool get hasErrors =>
      newsTitle != null || shortDescription != null || newsContent != null;
}
