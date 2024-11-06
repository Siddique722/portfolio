// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:portfolio/Controller/constants/color.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class ContainerOneMobile extends StatefulWidget {
//   const ContainerOneMobile({super.key});
//
//   @override
//   State<ContainerOneMobile> createState() => _ContainerOneMobileState();
// }
//
// class _ContainerOneMobileState extends State<ContainerOneMobile> {
//
//   final String phoneNumber = '+9233366632717'; // WhatsApp number
//   final String email='email';
//   final String github='github profile';
//   final String linkedin='linkedin';
//
//   void _launchWhatsApp() async {
//     final url = 'https://wa.me/$phoneNumber'; // WhatsApp URL scheme
//
//     await launch(url);
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     double height=MediaQuery.of(context).size.height;
//     double width=MediaQuery.of(context).size.width;
//     return Container(
//       width: width,
//       height: height,
//       color: AppColor.darkbgColor,
//       child: Padding(
//         padding: const EdgeInsets.only(top: 15.0,left: 25,right: 25),
//         child: Column(
//
//           children: [
//             CircleAvatar(
//               radius: 90,
//             ),
//             Text('Siddique Qureshi',style: GoogleFonts.inconsolata(
//                 color: Colors.white,
//                 fontSize: 42,
//                 fontWeight: FontWeight.bold
//             ),),
//
//             Text('Flutter Developer',style: GoogleFonts.inconsolata(
//                 color: AppColor.greenPrimaryColor,
//                 fontSize: 32,
//                 fontWeight: FontWeight.bold
//             ),),
//             Text('I specialize in Flutter app development using Dart, Firebase, and GetX for creating efficient, cross-platform mobile solutions. With a strong focus on clean code and seamless user experiences, I utilize GitHub for version control and collaboration, delivering high-quality apps.'
//               ,style: GoogleFonts.inconsolata(
//                   color: Colors.white,
//                   fontSize: 22,
//                   fontWeight: FontWeight.w500
//               ),),
//             SizedBox(height: 10,),
//             InkWell(
//               onTap: (){
//                 _launchWhatsApp();
//               },
//               child: Container(
//                 height: 50,
//                 width: 140,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(5),
//                     border: Border.all(
//                         color: AppColor.greenPrimaryColor
//                     )
//                 ),
//                 child: Center(child:
//                 Text('Contact'
//                   ,style: GoogleFonts.inconsolata(
//                       color: Colors.white,
//                       fontSize: 24,
//                       fontWeight: FontWeight.w500
//                   ),),),
//               ),
//             )
//
//
//           ],),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Controller/constants/color.dart';
import 'package:url_launcher/url_launcher.dart';

class ContainerOneMobile extends StatefulWidget {
  const ContainerOneMobile({super.key});

  @override
  State<ContainerOneMobile> createState() => _ContainerOneMobileState();
}

class _ContainerOneMobileState extends State<ContainerOneMobile>
    with TickerProviderStateMixin {
  final String phoneNumber = '+9233366632717'; // WhatsApp number
  final String email = 'email';
  final String github = 'github profile';
  final String linkedin = 'linkedin';

  // Animations for text and social icons
  late AnimationController _textController;
  late Animation<Offset> _textAnimation;
  late AnimationController _iconController;
  late Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize text animation controller
    _textController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _textAnimation =
        Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0)).animate(
          CurvedAnimation(parent: _textController, curve: Curves.easeInOut),
        );

    // Initialize social icon animation controller
    _iconController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _iconAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _iconController, curve: Curves.bounceOut),
    );

    // Start the animations
    _textController.forward();
    _iconController.forward();
  }

  @override
  void dispose() {
    _textController.dispose();
    _iconController.dispose();
    super.dispose();
  }

  void _launchWhatsApp() async {
    final url = 'https://wa.me/$phoneNumber'; // WhatsApp URL scheme
    await launch(url);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
     // / height: height,
      color: AppColor.darkbgColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 25, right: 25),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Container(
              //width: width * 0.9,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('lib/assets/image.jpg'),)
              ),
            ),
            SlideTransition(
              position: _textAnimation,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Siddique Qureshi',
                    style: GoogleFonts.inconsolata(
                        color: Colors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Flutter Developer',
                    style: GoogleFonts.inconsolata(
                        color: AppColor.greenPrimaryColor,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'I specialize in Flutter app development using Dart, Firebase, and GetX for creating efficient, cross-platform mobile solutions. With a strong focus on clean code and seamless user experiences, I utilize GitHub for version control and collaboration, delivering high-quality apps.',
                    style: GoogleFonts.inconsolata(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                _launchWhatsApp();
              },
              child: Container(
                height: 50,
                width: 140,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppColor.greenPrimaryColor)),
                child: Center(
                  child: Text(
                    'Contact',
                    style: GoogleFonts.inconsolata(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Row for social media icons with bubble animation
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ScaleTransition(
                  scale: _iconAnimation,
                  child: IconButton(
                    icon: Icon(Icons.email, color: Colors.white),
                    onPressed: () {
                      _launchWhatsApp(); // Replace with email launch
                    },
                  ),
                ),
                ScaleTransition(
                  scale: _iconAnimation,
                  child: IconButton(
                    icon: Icon(Icons.linked_camera, color: Colors.white),
                    onPressed: () {
                      _launchWhatsApp(); // Replace with LinkedIn launch
                    },
                  ),
                ),
                ScaleTransition(
                  scale: _iconAnimation,
                  child: IconButton(
                    icon: Icon(Icons.code, color: Colors.white),
                    onPressed: () {
                      _launchWhatsApp(); // Replace with GitHub launch
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
