import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detailed Project Report'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeButton(
              text: "Development Process",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DevelopmentProcessScreen()),
                );
              },
            ),
            HomeButton(
              text: "Challenges Faced",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChallengesScreen()),
                );
              },
            ),
            HomeButton(
              text: "Lessons Learned",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LessonsScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HomeButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  HomeButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          textStyle: TextStyle(fontSize: 18),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}


///--------------------------------
///

class DevelopmentProcessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Development Process'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(title: "Planning & Design"),
            SectionContent(
              content:
              "The project started with planning the core features and sketching out the UI designs. Initial wireframes were created, followed by high-fidelity designs using Figma.",
            ),
            SizedBox(height: 20),
            SectionTitle(title: "Implementation"),
            SectionContent(
              content:
              "Flutter was used for the frontend. The app's structure followed an MVVM pattern, ensuring that the UI and business logic were properly separated.",
            ),
            SizedBox(height: 20),
            SectionTitle(title: "Testing & Debugging"),
            SectionContent(
              content:
              "Thorough testing was conducted, especially focusing on responsiveness and cross-platform compatibility. Several bugs were identified and resolved during testing.",
            ),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class SectionContent extends StatelessWidget {
  final String content;

  SectionContent({required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
        fontSize: 16,
        height: 1.5,
      ),
    );
  }
}

///-------------------------------
///
///

class ChallengesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Challenges Faced'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(title: "Cross-Platform Compatibility"),
            SectionContent(
              content:
              "Ensuring the app worked seamlessly across both Android and iOS devices presented several challenges, especially in handling platform-specific UI quirks.",
            ),
            SizedBox(height: 20),
            SectionTitle(title: "State Management"),
            SectionContent(
              content:
              "Managing the state efficiently while keeping the app's architecture clean was difficult. We had to choose between different state management approaches.",
            ),
            SizedBox(height: 20),
            SectionTitle(title: "Performance Optimization"),
            SectionContent(
              content:
              "We faced performance issues due to heavy image assets. Lazy loading and caching techniques were used to optimize the app’s performance.",
            ),
          ],
        ),
      ),
    );
  }
}


//----------

class LessonsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lessons Learned'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(title: "Technical Learnings"),
            SectionContent(
              content:
              "Gained a deeper understanding of Flutter widgets, state management techniques, and how to optimize the app for better performance.",
            ),
            SizedBox(height: 20),
            SectionTitle(title: "Problem-Solving"),
            SectionContent(
              content:
              "Encountering and resolving multiple bugs helped improve our problem-solving skills, especially in debugging asynchronous code.",
            ),
            SizedBox(height: 20),
            SectionTitle(title: "UI/UX Design"),
            SectionContent(
              content:
              "We learned the importance of user-centric design, ensuring that the app is not only functional but also provides a pleasant user experience.",
            ),
          ],
        ),
      ),
    );
  }
}

