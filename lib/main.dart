import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/theme/light_theme.dart';
import 'core/route/app_routes.dart';
import 'core/dependency/dependency_injection.dart';

init() async {
  try {
    await Future.wait([]);
  } catch (e) {
    debugPrint("Error loading preferences or environment variables: $e");
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
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.key,
      defaultTransition: Transition.fadeIn,
      theme: themeData,
      transitionDuration: const Duration(milliseconds: 300),
      initialRoute: AppRoutes.home,
      getPages: AppRoutes.routes,
    );
  }
}
