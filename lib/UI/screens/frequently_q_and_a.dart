import 'package:flutter/material.dart';

class FaqScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frequently Asked Questions'),
      ),
      body: ListView(
        children: <Widget>[
          FaqItem(
            question: 'Q: What is a mentoring app?',
            answer:
                'A: A mentoring app is a platform that connects mentors and mentees, facilitating mentorship relationships and providing tools and resources to support personal and professional growth.',
          ),
          FaqItem(
            question: 'Q: How does the mentoring app work?',
            answer:
                'A: Mentors and mentees sign up for the app and create profiles, specifying their areas of expertise and the skills they want to develop. The app then uses a matching algorithm to suggest mentor-mentee pairs based on shared interests and goals.',
          ),
          FaqItem(
            question: 'Q: Who can be a mentor or mentee?',
            answer:
                'A: Anyone can sign up to be a mentor or mentee on the app. Mentors are typically experienced professionals who have expertise in a particular field or skill, while mentees are individuals who are seeking guidance and support to develop their skills and advance in their careers.',
          ),
          FaqItem(
            question: 'Q: Is there a cost to use the mentoring app?',
            answer:
                'Yes! A: The app may charge a subscription fee to access such as personalized coaching sessions or access to exclusive resources.',
          ),
          FaqItem(
            question: 'Q: How do I know if I\'m a good fit for the mentoring app?',
            answer:
                'A: The mentoring app is designed for individuals who are committed to personal and professional growth and are open to learning from others. Whether you\'re just starting out in your career or are a seasoned professional, the app can help you connect with mentors who can provide valuable insights and guidance.',
          ),
        ],
      ),
    );
  }
}

class FaqItem extends StatefulWidget {
  final String question;
  final String answer;

  FaqItem({required this.question, required this.answer});

  @override
  _FaqItemState createState() => _FaqItemState();
}

class _FaqItemState extends State<FaqItem> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ListTile(
            title: Text(
              widget.question,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: IconButton(
              icon: Icon(_expanded ? Icons.expand_less : Icons.expand_more),
              onPressed: () {
                setState(() {
                  _expanded = !_expanded;
                });
              },
            ),
          ),
          if (_expanded)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(widget.answer),
            ),
        ],
      ),
    );
  }
}