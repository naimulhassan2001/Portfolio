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
      name: 'VapeLess',
      logo: AppImages.vapeless,
      appStoreUrl:
          'https://apps.apple.com/us/app/vapeless-quit-vaping-app/id6742739131',
    ),
    ProjectModel(
      name: 'Pixe Share',
      logo: AppImages.pixeShare,
      appStoreUrl: 'https://apps.apple.com/us/app/pixeshare/id6741513200',
    ),
    ProjectModel(
      name: 'Food Sack',
      logo: AppImages.foodSack,
      appStoreUrl: 'https://apps.apple.com/us/app/food-sack/id6744678797',
    ),
  ];
}
