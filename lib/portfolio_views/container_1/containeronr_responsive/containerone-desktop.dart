// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:portfolio/Controller/constants/color.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class ContainerOneDesktop extends StatefulWidget {
//   const ContainerOneDesktop({super.key});
//
//   @override
//   State<ContainerOneDesktop> createState() => _ContainerOneDesktopState();
// }
//
// class _ContainerOneDesktopState extends State<ContainerOneDesktop> {
//
//   final String phoneNumber = '+9233366632717'; // WhatsApp number
// final String email='email';
// final String github='github profile';
// final String linkedin='linkedin';
//
//   void _launchWhatsApp() async {
//     final url = 'https://wa.me/$phoneNumber'; // WhatsApp URL scheme
//
//       await launch(url);
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     double height=MediaQuery.of(context).size.height;
//     double width=MediaQuery.of(context).size.width;
//     return Container(
// width: width,
//       height: height*0.8,
//       color: AppColor.darkbgColor,
//       child: Column(
//
//         children: [
//         Row(children: [
//           Container(
//            // margin: EdgeInsets.only(top: 20,left: 30,right: 30),
//             width: width*0.7,
//             child: Padding(
//               padding: EdgeInsets.only(top: 40,left: 190,right: 50),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                 Text('Siddique Qureshi',style: GoogleFonts.inconsolata(
//                   color: Colors.white,
//                   fontSize: 42,
//                   fontWeight: FontWeight.bold
//                 ),),
//
//                 Text('Flutter Developer',style: GoogleFonts.inconsolata(
//                     color: AppColor.greenPrimaryColor,
//                     fontSize: 32,
//                     fontWeight: FontWeight.bold
//                 ),),
//                 Text('I specialize in Flutter app development using Dart, Firebase, and GetX for creating efficient, cross-platform mobile solutions. With a strong focus on clean code and seamless user experiences, I utilize GitHub for version control and collaboration, delivering high-quality apps.'
//                   ,style: GoogleFonts.inconsolata(
//                     color: Colors.white,
//                     fontSize: 22,
//                     fontWeight: FontWeight.w500
//                 ),),
//                 SizedBox(height: 10,),
//                 InkWell(
//                   onTap: (){
//                     _launchWhatsApp();
//                   },
//                   child: Container(
//                     height: 50,
//                     width: 140,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       border: Border.all(
//                         color: AppColor.greenPrimaryColor
//                       )
//                     ),
//                     child: Center(child:
//                     Text('Contact'
//                       ,style: GoogleFonts.inconsolata(
//                           color: Colors.white,
//                           fontSize: 24,
//                           fontWeight: FontWeight.w500
//                       ),),),
//                   ),
//                 )
//
//               ],),
//             ),
//
//           ),
//           Container(width: width*0.3,
//           child: CircleAvatar(
//             radius: 90,
//           ),
//           )
//         ],)
//       ],),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Controller/constants/color.dart';
import 'package:url_launcher/url_launcher.dart';

class ContainerOneDesktop extends StatefulWidget {
  const ContainerOneDesktop({super.key});

  @override
  State<ContainerOneDesktop> createState() => _ContainerOneDesktopState();
}


class _ContainerOneDesktopState extends State<ContainerOneDesktop>
    with TickerProviderStateMixin {
  final String phoneNumber = '+9233366632717'; // WhatsApp number
  final String email = 'mailto:email@example.com'; // Email link
  final String github = 'https://github.com/username'; // GitHub profile
  final String linkedin = 'https://linkedin.com/in/username'; // LinkedIn profile

  late AnimationController _avatarController;
  late AnimationController _textController;
  late AnimationController _iconController;
  late Animation<double> _avatarAnimation;
  late Animation<Offset> _textSlideAnimation;
  late Animation<double> _iconAnimation;

  // Typing animation variables
  late AnimationController _typingController;
  late String _displayedText = '';
  final String _completeText =
      'I specialize in Flutter app development using Dart, Firebase, and GetX for creating efficient, cross-platform mobile solutions. With a strong focus on clean code and seamless user experiences, I utilize GitHub for version control and collaboration, delivering high-quality apps.';

  @override
  void initState() {
    super.initState();

    _avatarController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _textController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _iconController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    _avatarAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _avatarController, curve: Curves.easeInOut),
    );

    _textSlideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(CurvedAnimation(parent: _textController, curve: Curves.easeInOut));

    _iconAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _iconController, curve: Curves.bounceOut),
    );

    _avatarController.forward();
    _textController.forward();
    _iconController.forward();

    // Typing animation controller
    _typingController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: _completeText.length * 20),
    )..addListener(() {
      setState(() {
        _displayedText = _completeText.substring(
            0, (_typingController.value * _completeText.length).toInt());
      });
    });
    _typingController.forward();
  }

  @override
  void dispose() {
    _avatarController.dispose();
    _textController.dispose();
    _iconController.dispose();
    _typingController.dispose();
    super.dispose();
  }

  void _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: height * 0.8,
      color: AppColor.darkbgColor,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: width * 0.7,
                child: Padding(
                  padding: EdgeInsets.only(top: 40, left: 190, right: 50),
                  child: SlideTransition(
                    position: _textSlideAnimation,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
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
                          _displayedText, // Typing effect text
                          style: GoogleFonts.inconsolata(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            _launchUrl('https://wa.me/$phoneNumber');
                          },
                          child: Container(
                            height: 50,
                            width: 140,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: AppColor.greenPrimaryColor)),
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
                        // Social media icons with hover animation
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            _buildHoverIcon(Icons.email, email),
                            _buildHoverIcon(Icons.link, linkedin),
                            _buildHoverIcon(Icons.code, github),
                            _buildHoverIcon(Icons.message, 'https://wa.me/$phoneNumber'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              FadeTransition(
                opacity: _avatarAnimation,
                child: ScaleTransition(
                  scale: _avatarAnimation,
                  child: Container(
                    width: width * 0.3,
                    child: CircleAvatar(
                      radius: 90,
                      // backgroundImage: AssetImage('assets/avatar.png'), // replace with actual image
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Widget to build social media icons with hover animation
  Widget _buildHoverIcon(IconData icon, String url) {
    return MouseRegion(
      onEnter: (_) => _onIconHover(),
      onExit: (_) => _onIconHoverExit(),
      child: ScaleTransition(
        scale: _iconAnimation,
        child: IconButton(
          icon: Icon(icon, color: Colors.white),
          onPressed: () {
            _launchUrl(url);
          },
        ),
      ),
    );
  }

  void _onIconHover() {
    setState(() {
      _iconController.forward(from: 0.8); // Enlarge slightly on hover
    });
  }

  void _onIconHoverExit() {
    setState(() {
      _iconController.reverse(); // Return to normal size
    });
  }
}
