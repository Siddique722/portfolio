import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Controller/constants/color.dart';
import 'package:url_launcher/url_launcher.dart';

class ContainerOneDesktop extends StatefulWidget {
  const ContainerOneDesktop({super.key});

  @override
  State<ContainerOneDesktop> createState() => _ContainerOneDesktopState();
}

class _ContainerOneDesktopState extends State<ContainerOneDesktop> {

  final String phoneNumber = '+9233366632717'; // WhatsApp number
final String email='email';
final String github='github profile';
final String linkedin='linkedin';

  void _launchWhatsApp() async {
    final url = 'https://wa.me/$phoneNumber'; // WhatsApp URL scheme

      await launch(url);

  }
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Container(
width: width,
      height: height*0.8,
      color: AppColor.darkbgColor,
      child: Column(

        children: [
        Row(children: [
          Container(
           // margin: EdgeInsets.only(top: 20,left: 30,right: 30),
            width: width*0.7,
            child: Padding(
              padding: EdgeInsets.only(top: 40,left: 190,right: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Text('Siddique Qureshi',style: GoogleFonts.inconsolata(
                  color: Colors.white,
                  fontSize: 42,
                  fontWeight: FontWeight.bold
                ),),

                Text('Flutter Developer',style: GoogleFonts.inconsolata(
                    color: AppColor.greenPrimaryColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                ),),
                Text('I specialize in Flutter app development using Dart, Firebase, and GetX for creating efficient, cross-platform mobile solutions. With a strong focus on clean code and seamless user experiences, I utilize GitHub for version control and collaboration, delivering high-quality apps.'
                  ,style: GoogleFonts.inconsolata(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500
                ),),
                SizedBox(height: 10,),
                InkWell(
                  onTap: (){
                    _launchWhatsApp();
                  },
                  child: Container(
                    height: 50,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: AppColor.greenPrimaryColor
                      )
                    ),
                    child: Center(child:
                    Text('Contact'
                      ,style: GoogleFonts.inconsolata(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500
                      ),),),
                  ),
                )

              ],),
            ),

          ),
          Container(width: width*0.3,
          child: CircleAvatar(
            radius: 90,
          ),
          )
        ],)
      ],),
    );
  }
}
