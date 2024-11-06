import 'package:flutter/material.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    double wi=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
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
          Container(
            height: 50,
            width: wi*0.9,
            color: Colors.orange,
          ),
          SizedBox(height: 20,),
          Container(
            height: 50,
            width: wi*0.9,
            color: Colors.green,
          ),
          SizedBox(height: 20,),
          Container(
            height: 50,
            width: wi*0.9,
            color: Colors.purple,
          ),
          SizedBox(height: 20,),
          Container(
            height: 200,
            width: wi*0.9,
            color: Colors.blue,
          ),
          SizedBox(height: 20,),
          Container(
            height: 200,
            width: wi*0.9,
            color: Colors.purple,
          ),
          SizedBox(height: 20,),
          Container(
            height: 200,
            width: wi*0.9,
            color: Colors.orange,
          ),
        ],),
      ),
    );
  }
}
