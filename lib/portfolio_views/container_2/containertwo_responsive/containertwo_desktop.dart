import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Controller/constants/color.dart';


class ContainertwoDesktop extends StatefulWidget {
  const ContainertwoDesktop({super.key});

  @override
  State<ContainertwoDesktop> createState() => _ContainertwoDesktopState();
}

class _ContainertwoDesktopState extends State<ContainertwoDesktop> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Container(
      height: height*0.8,
      width: width,
      color: AppColor.lightbgColor,
      child: Column(children: [
        Text('My Services',style: GoogleFonts.inconsolata(
            color: Colors.white,
            fontSize: 42,
            fontWeight: FontWeight.bold
        ),),

        Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(500),
            border: Border.all(color: AppColor.greenPrimaryColor,width: 9)
          ),
          child: Center(child: 
            Image.asset('lib/assets/icon.png'),),
        )

      ],),
    );
  }
}
