import 'package:flutter/material.dart';
import 'package:portfolio/components/responsive_layout/responsive-layout.dart';


class ContainerTwoMain extends StatefulWidget {
  const ContainerTwoMain({super.key});

  @override
  State<ContainerTwoMain> createState() => _ContainerTwoMainState();
}

class _ContainerTwoMainState extends State<ContainerTwoMain> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayotWidget(
        desktop: desktop,
        mobile: mobile,
        tablet: tablet);
  }
}
