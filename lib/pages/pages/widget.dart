import 'package:flutter/material.dart';

class CommonLayout extends StatelessWidget {
  final String title;
  final Widget body;

  const CommonLayout({
    Key? key,
    required this.title,
    required this.body, required Scaffold child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Set the initial index
        onTap: (index) {
          // Handle navigation based on index
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/home');
          } else if (index == 1) {
            Navigator.pushReplacementNamed(context, '/heritage');
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, '/amenities');
          } else if (index == 3) {
            Navigator.pushReplacementNamed(context, '/feedback');
          } else if (index == 4) {
            Navigator.pushReplacementNamed(context, '/user');
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.train),
            label: 'Heritage',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.spa),
            label: 'Amenities',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feedback),
            label: 'Feedback',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
          ),
        ],
      ),
    );
  }
}
