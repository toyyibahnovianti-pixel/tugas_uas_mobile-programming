import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WordRise',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF052A77)),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF03225F),
              Color(0xFF072D75),
              Color(0xFF021135),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Pink Icon Box
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: const Color(0xFFF0CAD4),
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Icon(
                Icons.menu_book,
                size: 55,
                color: Color(0xFF6B4550),
              ),
            ),
            const SizedBox(height: 32),
            // Title
            const Text(
              'WordRise',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w900,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(height: 12),
            // Subtitle
            const Text(
              'English Vocabulary Builder',
              style: TextStyle(
                color: Color(0xFFB87882),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 70),
            // Progress Bar
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                // Track
                Container(
                  width: 220,
                  height: 4,
                  decoration: BoxDecoration(
                    color: const Color(0xFF021131),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                // Progress
                Container(
                  width: 70,
                  height: 4,
                  decoration: BoxDecoration(
                    color: const Color(0xFFB87882),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                // Dot
                Positioned(
                  left: 68,
                  child: Container(
                    width: 4,
                    height: 4,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 45),
            // Bottom Text
            const Text(
              'ELEVATE YOUR LANGUAGE',
              style: TextStyle(
                color: Color(0xFF5577A8),
                fontSize: 13,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
