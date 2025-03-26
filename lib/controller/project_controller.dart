import 'package:get/get.dart';
import 'package:portfolio/model/project_model.dart';

import 'package:portfolio/utils/app_images.dart';

class ProjectController extends GetxController {
  List<ProjectModel> projects = [
    ProjectModel(
        name: 'Russend',
        shortDescription:
            'Russend is a money transfer app designed to facilitate easy and secure financial transactions from Russia to Central African countries.',
        images: [
          AppImages.img,
          AppImages.img,
          AppImages.img,
          AppImages.img,
        ],
        technology: [
          'Socket.IO',
          'Socket.IO',
          'Socket.IO',
          'Socket.IO',
        ],
        features: [
          '• Integrated to support mobile money transfers via services like Orange Money, and MTN',
          '• Integrated to support mobile money transfers via services like Orange Money, and MTN',
          '• Integrated to support mobile money transfers via services like Orange Money, and MTN',
          '• Integrated to support mobile money transfers via services like Orange Money, and MTN',
        ],
        completedYear: '2024',
        role: [
          'Backend Development',
          'API Integration',
          'Payment Gateway Integration'
        ])
  ];
}
