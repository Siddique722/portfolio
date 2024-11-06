import 'package:flutter/material.dart';
import 'package:portfolio/components/responsive_layout/responsive-layout.dart';
import 'package:portfolio/portfolio_views/container_1/containeronr_responsive/containerone-desktop.dart';
import 'package:portfolio/portfolio_views/container_1/containeronr_responsive/containerone-mobile.dart';


class ContainerOneMain extends StatefulWidget {
  const ContainerOneMain({super.key});

  @override
  State<ContainerOneMain> createState() => _ContainerOneMainState();
}

class _ContainerOneMainState extends State<ContainerOneMain> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayotWidget(
        desktop: ContainerOneDesktop(),
        mobile: ContainerOneMobile(),
        tablet: ContainerOneMobile());
  }
}
