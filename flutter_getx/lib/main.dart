import 'package:flutter/material.dart';
import 'package:flutter_getx/languages.dart';
import 'package:flutter_getx/route_class.dart';
import 'package:get/route_manager.dart';
import 'screens/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      //fallbackLocale: const Locale('en', 'US'), uncomment this
      locale: const Locale('en', 'US'),
      initialRoute: RouteClass.getHomeRoute(),
      getPages: RouteClass.routes,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
