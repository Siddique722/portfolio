import 'package:flutter/material.dart';
import 'package:portfolio/components/responsive_layout/responsive-layout.dart';
import 'package:portfolio/portfolio_views/container_2/containertwo_responsive/containertwo_desktop.dart';
import 'package:portfolio/portfolio_views/container_3/container_three_responsive/container3_desktop.dart';
import 'package:portfolio/portfolio_views/container_3/container_three_responsive/container3_mobile.dart';


class ContainerThreeMain extends StatefulWidget {
  const ContainerThreeMain({super.key});

  @override
  State<ContainerThreeMain> createState() => _ContainerThreeMainState();
}

class _ContainerThreeMainState extends State<ContainerThreeMain> {
  @override
  Widget build(BuildContext context) {
    return
      ResponsiveLayotWidget(
          desktop: ContainerthreeDesktop(),
          mobile: ContainerthreeMobile(),
          tablet: ContainerthreeMobile());
  }
}
