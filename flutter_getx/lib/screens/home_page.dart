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
            OutlinedButton(
                onPressed: () {
                  Get.defaultDialog(
                    barrierDismissible: false,
                    title: 'Default Dialog',
                    middleTextStyle: const TextStyle(color: Colors.green),
                    middleText: 'This is also middle text it is shown when some larger text is used in this area',
                    textCancel: 'Cancel',
                    onCancel: () {},
                    onConfirm: () {},
                    actions: [
                      OutlinedButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text("Get Back 1ß"))
                    ],
                    content: SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: const <Widget>[
                          //SizedBox.shrink(),
                         // Text("Loading ..."),
                        ],
                      ),
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.green,
                ),
                child: const Text("This is default dialog")),
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
