import 'package:get/get.dart';

import '../../controller/project_controller.dart';



class DependencyInjection extends Bindings {
  @override
  void dependencies() {
     Get.lazyPut(() => ProjectController(), fenix: true);
  }
}
