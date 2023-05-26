import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_getx/route_class.dart';

class SubScreenThree extends StatefulWidget {
  const SubScreenThree({super.key});

  @override
  State<SubScreenThree> createState() => _SubScreenThreeState();
}

class _SubScreenThreeState extends State<SubScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            const Text("SUB SCREEN 3"),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteClass.getSubScreenFour());
              },
              child: const Text("Go to Sub 4"),
            )
          ],
        ),
      ),
    );
  }
}
