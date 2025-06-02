import 'package:flutter/material.dart';
import 'package:flutter_road/features/home/presentation/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppNav(),
    );
  }
}

class AppNav extends StatefulWidget {

  AppNav({super.key});

  @override
  State<AppNav> createState() => _AppNavState();
}

class _AppNavState extends State<AppNav> {
final pages = [
   HomePage(),
   Text("Ok"),
   Text("Ok")
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
          },
        currentIndex: _selectedIndex,
        selectedFontSize: 16,
        selectedLabelStyle: GoogleFonts.splineSans(),
        selectedItemColor: const Color.fromARGB(255, 8, 83, 145),
        mouseCursor: MouseCursor.uncontrolled,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined), label: "Favorites"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "Profile")
        ]
        ),
    );
  }
}
