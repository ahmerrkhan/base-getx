import 'package:flutter/material.dart';
import 'package:flutter_getx/route_class.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const Text('Change langugae Options'),
            ElevatedButton(
                onPressed: () {
                  var englishLocale = const Locale('en', 'US');
                  var urduLocale = const Locale('ur', 'PK');
                  if (Get.locale == englishLocale) {
                    Get.updateLocale(urduLocale);
                  } else {
                    Get.updateLocale(englishLocale);
                  }
                },
                child: const Text('Button to change')),
          ],
        ),
      ),
      appBar: AppBar(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Text("screen".tr),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  RouteClass.getSubScreenOne(),
                );
              },
              child: const Text("Go to Sub 1"),
            )
          ],
        ),
      ),
    );
  }
}
