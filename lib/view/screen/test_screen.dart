import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  late Future<Map<String, TextStyle Function({TextStyle? textStyle})>>
      fontsFuture;

  @override
  void initState() {
    super.initState();
    fontsFuture = _loadGoogleFonts();
  }

  Future<Map<String, TextStyle Function({TextStyle? textStyle})>>
      _loadGoogleFonts() async {
    try {
      return GoogleFonts.asMap();
    } catch (e) {
      debugPrint('Error loading Google Fonts: $e');
      return {};
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: const Text('Google Fonts Showcase')),
      body: Container(),
    );
}
