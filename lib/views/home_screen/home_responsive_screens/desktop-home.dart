import 'package:flutter/material.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({super.key});

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    double wi=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: wi*0.3,
              height: 50,
              color: Colors.blue,
            ),
            Container(
              height: 50,
              width: wi*0.6,
              color: Colors.black38,
            )
          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              width: wi*0.3,
              color: Colors.orange,
            ),
            Container(
              height: 50,
              width: wi*0.3,
              color: Colors.green,
            ),
            Container(
              height: 50,
              width: wi*0.3,
              color: Colors.purple,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              width: wi*0.3,
              color: Colors.orange,
            ),
            Container(
              height: 50,
              width: wi*0.3,
              color: Colors.green,
            ),
            Container(
              height: 50,
              width: wi*0.3,
              color: Colors.purple,
            ),
          ],
        ),
      ],),
    );
  }
}
