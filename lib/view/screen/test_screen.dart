import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/app_colors.dart';

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
      debugPrint("Error loading Google Fonts: $e");
      return {};
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Google Fonts Showcase")),
      body: SafeArea(
        child: FutureBuilder<
          Map<String, TextStyle Function({TextStyle? textStyle})>
        >(
          future: fontsFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError || snapshot.data!.isEmpty) {
              return const Center(child: Text("Failed to load fonts"));
            }

            final fonts = snapshot.data!;
            return ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: fonts.length,
              itemBuilder: (context, index) {
                final entry = fonts.entries.elementAt(index);
                final fontName = entry.key; // Get font name

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    fontName,
                    style: entry.value(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
