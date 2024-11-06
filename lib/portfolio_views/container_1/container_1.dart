import 'package:flutter/material.dart';
import 'package:portfolio/components/responsive_layout/responsive-layout.dart';


class ContainerOneMain extends StatefulWidget {
  const ContainerOneMain({super.key});

  @override
  State<ContainerOneMain> createState() => _ContainerOneMainState();
}

class _ContainerOneMainState extends State<ContainerOneMain> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayotWidget(
        desktop: desktop,
        mobile: mobile,
        tablet: tablet);
  }
}
