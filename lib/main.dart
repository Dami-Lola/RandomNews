import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newsupdate/app.dart';
import 'package:provider/provider.dart';
import 'config/config.dart';
import 'main.reflectable.dart' show initializeReflectable;
import 'config/apiclient.dart';

Future<void> main() async{

  // initializeReflectable();
  WidgetsFlutterBinding.ensureInitialized();

  await Config.loadConfig();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      //   Provider<AuthStore?>(create: (_) => authStore),
        Provider<ApiClient>(create: (_) => ApiClient()),
      ],
      child: const NewsApp(),
    );
  }
}

