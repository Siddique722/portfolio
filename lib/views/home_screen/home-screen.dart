import 'package:flutter/material.dart';
import 'package:portfolio/components/responsive_layout/responsive-layout.dart';
import 'package:portfolio/views/home_screen/home_responsive_screens/desktop-home.dart';
import 'package:portfolio/views/home_screen/home_responsive_screens/mobile-home.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayotWidget(
      // scree for desktop
        desktop: HomeDesktop(),

        // screen for mobile
       mobile: HomeMobile(),
       //  mobile: HomeDesktop(),

        //screen for tablet
      tablet: HomeMobile(),
//        tablet: HomeDesktop()
    );
  }
}
