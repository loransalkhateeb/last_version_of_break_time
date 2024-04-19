import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shopapp/Secreens/Admin_Secreens/Main_Admin2.dart';
import 'package:shopapp/Secreens/Admin_Secreens/Main_Admin_Secreen.dart';
import 'package:shopapp/Secreens/Admin_Secreens/Meal2.dart';
import 'Secreens/Splash_Secreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      home:  Main_Admin2(),
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
    );
  }
}
