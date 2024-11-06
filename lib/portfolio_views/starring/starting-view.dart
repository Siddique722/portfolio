import 'package:flutter/material.dart';
import 'package:portfolio/portfolio_views/container_1/container_1.dart';
import 'package:portfolio/portfolio_views/container_2/container-2.dart';


class StartingView extends StatefulWidget {
  const StartingView({super.key});

  @override
  State<StartingView> createState() => _StartingViewState();
}

class _StartingViewState extends State<StartingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          ContainerOneMain(),
          ContainerTwoMain()

        ],),
      ),
    );
  }
}
