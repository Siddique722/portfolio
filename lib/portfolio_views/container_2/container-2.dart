import 'package:flutter/material.dart';
import 'package:portfolio/components/responsive_layout/responsive-layout.dart';
import 'package:portfolio/portfolio_views/container_2/containertwo_responsive/containertwo-mobile.dart';
import 'package:portfolio/portfolio_views/container_2/containertwo_responsive/containertwo_desktop.dart';


class ContainerTwoMain extends StatefulWidget {
  const ContainerTwoMain({super.key});

  @override
  State<ContainerTwoMain> createState() => _ContainerTwoMainState();
}

class _ContainerTwoMainState extends State<ContainerTwoMain> {
  @override
  Widget build(BuildContext context) {
    return
      ResponsiveLayotWidget(
        desktop: ContainertwoDesktop(),
        mobile: ContainertwoMobile(),
        tablet: ContainertwoMobile());
   }
}
