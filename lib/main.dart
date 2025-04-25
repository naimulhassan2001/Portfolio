import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/core/theme/light_theme.dart';
import 'package:portfolio/core/dependency/dependency_injection.dart';
import 'package:portfolio/utils/app_string.dart';
import 'package:portfolio/view/screen/splash/splash_screen.dart';

init() async {
  try {
    DependencyInjection dI = DependencyInjection();
    dI.dependencies();
    await Future.wait([]);
  } catch (e) {
    debugPrint('Error loading preferences or environment variables: $e');
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        title: AppString.knownName,
        debugShowCheckedModeBanner: false,
        navigatorKey: Get.key,
        defaultTransition: Transition.fadeIn,
        theme: themeData,
        transitionDuration: const Duration(milliseconds: 300),
        home: SplashScreen(),
      );
}
