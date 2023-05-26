import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../route_class.dart';

class SubScreenTwo extends StatefulWidget {
  const SubScreenTwo({super.key});

  @override
  State<SubScreenTwo> createState() => _SubScreenTwoState();
}

class _SubScreenTwoState extends State<SubScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            const Text("SUB SCREEN 2"),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteClass.getSubScreenThree());
              },
              child: const Text("Go to Sub 3"),
            )
          ],
        ),
      ),
    );
  }
}
