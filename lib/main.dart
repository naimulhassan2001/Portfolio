import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/core/theme/light_theme.dart';
import 'package:portfolio/core/route/app_routes.dart';
import 'package:portfolio/core/dependency/dependency_injection.dart';

init() async {
  try {
    await Future.wait([]);
  } catch (e) {
    debugPrint('Error loading preferences or environment variables: $e');
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  DependencyInjection dI = DependencyInjection();
  dI.dependencies();
  await init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.key,
      defaultTransition: Transition.fadeIn,
      theme: themeData,
      transitionDuration: const Duration(milliseconds: 400),
      initialRoute: AppRoutes.home,
      getPages: AppRoutes.routes,
    );
}
