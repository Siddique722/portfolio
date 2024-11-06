import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Controller/constants/color.dart';

class ContainerthreeMobile extends StatefulWidget {
  const ContainerthreeMobile({super.key});

  @override
  State<ContainerthreeMobile> createState() => _ContainerthreeMobileState();
}

class _ContainerthreeMobileState extends State<ContainerthreeMobile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      color: AppColor.darkbgColor,
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'My Projects',
            style: GoogleFonts.inconsolata(
                color: Colors.white, fontSize: 42, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          // Displaying project details in rows with columns
          ProjectWidget(
              projectName: 'Project One',
              projectDetails:
              'A Flutter app built for cross-platform mobile development, featuring state management with GetX and Firebase for data storage.'),
          ProjectWidget(
              projectName: 'Project Two',
              projectDetails:
              'A Dart backend API integration project that handles dynamic user data and real-time operations using Firebase Cloud Functions.'),
          ProjectWidget(
              projectName: 'Project Three',
              projectDetails:
              'An eCommerce Flutter app with full API integration for product listings, cart management, and secure payments.'),
          SizedBox(height: 10),
          ProjectWidget(
              projectName: 'Project Four',
              projectDetails:
              'A social media app developed using Flutter, with real-time chat functionality, push notifications, and Firebase backend.'),
          ProjectWidget(
              projectName: 'Project Five',
              projectDetails:
              'A personal blog website using Flutter Web, allowing users to create, edit, and share blog posts with real-time comments and reactions.'),
          ProjectWidget(
              projectName: 'Project Six',
              projectDetails:
              'A portfolio website designed using Flutter Web to showcase my skills, projects, and expertise in mobile development.'),
        ],
      ),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String projectName;
  final String projectDetails;

  ProjectWidget({super.key, required this.projectName, required this.projectDetails});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
    //  width: width * 0.25,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(500),
                  border: Border.all(color: AppColor.greenPrimaryColor, width: 7)),
              child: Center(
                child: Icon(
                  Icons.developer_mode, // Icon representing the project
                  color: AppColor.greenPrimaryColor,
                  size: 50,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              projectName,
              style: GoogleFonts.inconsolata(
                  color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              projectDetails,
              style: GoogleFonts.inconsolata(
                  color: Color(0xff767676), fontSize: 16, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
