import 'package:flutter/material.dart';


class SubScreenFour extends StatefulWidget {
  const SubScreenFour({super.key});

  @override
  State<SubScreenFour> createState() => _SubScreenFourState();
}

class _SubScreenFourState extends State<SubScreenFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            const Text("SUB SCREEN 4"),
            ElevatedButton(
              onPressed: () {
                
              },
              child: const Text("Nothing"),
            )
          ],
        ),
      ),
    );
  }
}
