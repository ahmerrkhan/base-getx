import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../route_class.dart';

class SubScreenOne extends StatefulWidget {
  const SubScreenOne({super.key});

  @override
  State<SubScreenOne> createState() => _SubScreenOneState();
}

class _SubScreenOneState extends State<SubScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            const Text("SUB SCREEN 1"),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteClass.getSubScreenTwo());
              },
              child: const Text("Go to Sub 2"),
            )
          ],
        ),
      ),
    );
  }
}
