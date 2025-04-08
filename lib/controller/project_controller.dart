import 'package:get/get.dart';
import 'package:portfolio/model/project_model.dart';

import 'package:portfolio/utils/app_images.dart';

class ProjectController extends GetxController {
  List<ProjectModel> projects = [
    ProjectModel(
      name: 'Russend',
      logo: AppImages.russend,
      appStoreUrl: 'https://apps.apple.com/us/app/russend/id6503144297',
      playStoreUrl:
          'https://play.google.com/store/apps/details?id=com.russendsolution.russend',
    ),
    ProjectModel(
      name: 'Untied',
      logo: AppImages.united,
      playStoreUrl:
          'https://play.google.com/store/apps/details?id=com.united.bycadz',
      appStoreUrl: 'https://apps.apple.com/us/app/united-app/id6624303228',
    ),
    ProjectModel(
      name: 'Russend',
      logo: AppImages.russend,
      appStoreUrl: 'https://apps.apple.com/us/app/russend/id6503144297',
    ),
  ];
}
