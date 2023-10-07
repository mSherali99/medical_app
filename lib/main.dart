import 'package:flutter/material.dart';
import 'package:medical_app/domain/app_repository.dart';
import 'presentation/screen/main/main_screen.dart';
import 'presentation/themes/themes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: const [
      Locale('uz'),
      Locale('ru'),
    ],
    path: 'assets/translation',
    useOnlyLangCode: true,
    fallbackLocale:  Locale('ru'),
    child: const MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MyThemes.light(),
      darkTheme: MyThemes.dark(),
      themeMode: ThemeMode.system,
      home: MainScreen(),
    );
  }
}

