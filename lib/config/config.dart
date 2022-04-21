import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;

abstract class Config{

  static String? apiKey = DotEnv.dotenv.env['API_KEY'];
  static String? baseUrl = DotEnv.dotenv.env['BASE_URL'];
  static String? topHeadlines = DotEnv.dotenv.env['topHeadlines'];
  static String? businessNews = DotEnv.dotenv.env['usBusinessNews'];
  static String? techCrunchNews = DotEnv.dotenv.env['techcrunchNews'];
  static String? wallStreetJournalNews = DotEnv.dotenv.env['wallStreetJournalNews'];

  static Future<void> loadConfig() async {
    const String env = String.fromEnvironment('app.env');
    const envFile = 'env/$env.env';

    await DotEnv.dotenv.load(fileName: envFile);
  }
}