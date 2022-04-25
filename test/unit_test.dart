import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mockito/annotations.dart';
import 'package:newsupdate/screens/profilescreen/add_news_store.dart';


void main() {
  late Dio dio;
  late DioAdapter dioAdapter;
  Response<dynamic> response;

  group('Input fields validation', () {
    NewNewsStore? newNewsStore;

    setUp(() {
      newNewsStore = NewNewsStore();
    });

    test('Test for empty news title', () {
      newNewsStore?.validateNewsTitle("");
      expect(newNewsStore?.error.newsTitle, 'News title is required');
    });

    test('Test for empty short description', () {
      newNewsStore?.validateShortDescription("");
      expect(newNewsStore?.error.shortDescription, 'Short description is required');
    });

    test('Test for empty news content', () {
      newNewsStore?.validateNewsContent("");
      expect(newNewsStore?.error.newsContent, 'News content is required');
    });

  });
  group('fetch All news', (){
    const baseUrl = 'https://newsapi.org/v2/';
    const queryParam = <String, dynamic>{
      'apiKey': 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890'
    };
    setUp(() {
      dio = Dio(BaseOptions(baseUrl: baseUrl));
      dioAdapter = DioAdapter(dio: dio);
    });

    test('get topHeadlines', () async {
      const route = 'top-headlines?country=us';
      dioAdapter.onGet(
        route,
            (server) => server.reply(200, null),
        queryParameters: queryParam,
      );
      response = await dio.get(route, queryParameters: queryParam);
      expect(response.statusCode, 200);
    });

    test('get businessNews', () async {
      const route = 'headlines?country=us&category=business';
      dioAdapter.onGet(
        route,
            (server) => server.reply(200, null),
        queryParameters: queryParam,
      );
      response = await dio.get(route, queryParameters: queryParam);
      expect(response.statusCode, 200);
    });

    test('get techCrunchNews', () async {
      const route = 'headlines?sources=techcrunch';
      dioAdapter.onGet(
        route,
            (server) => server.reply(200, null),
        queryParameters: queryParam,
      );
      response = await dio.get(route, queryParameters: queryParam);
      expect(response.statusCode, 200);
    });

    test('get wallStreetJournalNews', () async {
      const route = 'everything?domains=wsj.com';
      dioAdapter.onGet(
        route,
            (server) => server.reply(200, null),
        queryParameters: queryParam,
      );
      response = await dio.get(route, queryParameters: queryParam);
      expect(response.statusCode, 200);
    });
  });
  }