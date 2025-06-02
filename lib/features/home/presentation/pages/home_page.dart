import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        title: Text(
          "Futter Widget Explore",
          style: GoogleFonts.splineSans(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0F1417),
          ),
        ),
        centerTitle: true,
        actions: [Icon(Icons.settings_outlined)],
        actionsPadding: EdgeInsets.all(15),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
          left: 15,
          right: 15,
          bottom: 15,
        ),
        child: Column(
          spacing: 25,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(
              backgroundColor: WidgetStatePropertyAll(Colors.white),
              padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 16.0),
              ),
              leading: Icon(Icons.search_outlined),
              hintText: "Recherche",
              hintStyle: WidgetStatePropertyAll<TextStyle>(
                TextStyle(color: Colors.grey, fontSize: 18),
              ),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            Text(
              "Catégories",
              style: GoogleFonts.splineSans(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 1.4,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  MyContainer(
                    icon: Icons.child_care,
                    title: "Beginner",
                    description: "Widgets de base",
                  ),
                  MyContainer(
                    icon: Icons.boy_outlined,
                    title: "Intermediate",
                    description: "Widgets de mise en page",
                  ),
                  MyContainer(
                    icon: Icons.expand,
                    title: "Advanced",
                    description: "Widgets avancés",
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String description;
  const MyContainer({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(17),
        decoration: BoxDecoration(
          border: Border.all(width: 0.5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.black),
            /*Image(
            image: AssetImage("assets/icons/base.png"),
            height: 30,
            width: 30,
             ),*/
            SizedBox(height: 5),
            Text(
              title,
              style: GoogleFonts.splineSans(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 3),
            Text(
              description,
              style: GoogleFonts.splineSans(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.black45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
