import 'package:flutter/material.dart';
import 'package:portfolio/helpers/my_extension.dart';
import 'package:portfolio/helpers/other_helper.dart';
import 'package:portfolio/helpers/resize.dart';
import 'package:portfolio/model/project_model.dart';
import 'package:portfolio/utils/app_string.dart';
import 'package:portfolio/view/component/image/common_image.dart';
import 'package:portfolio/view/component/text/common_text.dart';

import 'package:portfolio/utils/app_colors.dart';

Widget projectItem(ProjectModel item) => Stack(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CommonImage(
                  imageSrc: item.logo,
                  size: Resize.projectLogoSize(),
                  borderRadius: 10,
                  imageType: ImageType.png,
                ),
                CommonText(
                  text: '${AppString.appName}${item.name}',
                  color: AppColors.black,
                  fontSize: Resize.projectNameTextSize(),
                ).start,
                Wrap(
                  spacing: 8,
                  children: [
                    if (item.playStoreUrl.isNotEmpty)
                      InkWell(
                          onTap: () => OtherHelper.openUrl(item.playStoreUrl),
                          child: CommonText(
                            text: AppString.playStore,
                            color: AppColors.blue,
                            fontSize: Resize.projectStoreButtonSize(),
                          )),
                    if (item.appStoreUrl.isNotEmpty)
                      InkWell(
                          onTap: () => OtherHelper.openUrl(item.appStoreUrl),
                          child: CommonText(
                            text: AppString.appStore,
                            color: AppColors.blue,
                            fontSize: Resize.projectStoreButtonSize(),
                          )),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 16, top: 16),
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          decoration: BoxDecoration(
              color: AppColors.black.withOpacity(0.6),
              borderRadius: BorderRadius.circular(6)),
          child: CommonText(
            text: 'Client Project',
            fontSize: Resize.projectClientProjectTextSize(),
          ),
        )
      ],
    );

// import 'package:flutter/material.dart';
// import 'package:portfolio/helpers/my_extension.dart';
// import 'package:portfolio/model/project_model.dart';
// import 'package:portfolio/utils/app_colors.dart';
// import 'package:portfolio/utils/app_images.dart';
// import 'package:portfolio/view/component/image/common_image.dart';
// import 'package:portfolio/view/component/text/common_text.dart';
//
// Widget projectItem(ProjectModel item) {
//   return Container(
//     padding: EdgeInsets.all(20),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         CommonText(
//           text: item.name,
//           fontSize: 30,
//           fontWeight: FontWeight.bold,
//         ),
//         CommonText(
//             maxLines: 10,
//             style: true,
//             fontSize: 16,
//             text: item.shortDescription),
//         20.height,
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Expanded(
//               flex: 2,
//               child: Column(
//                 children: [
//                   CommonImage(
//                       imageType: ImageType.png, imageSrc: item.images.first),
//                   20.height,
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       children: List.generate(
//                         item.images.length,
//                         (index) {
//                           return Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 6),
//                             child: CommonImage(
//                                 imageType: ImageType.png,
//                                 width: 100,
//                                 imageSrc: AppImages.img),
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             20.width,
//             Expanded(
//               flex: 3,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   CommonText(
//                     text: "Tech Stack",
//                     fontWeight: FontWeight.bold,
//                     fontSize: 24,
//                   ),
//                   10.height,
//                   Row(
//                     children: List.generate(
//                       item.technology.length,
//                       (index) => Container(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 12, vertical: 4),
//                         margin: EdgeInsets.only(right: 8),
//                         decoration: BoxDecoration(
//                             color: AppColors.blue,
//                             borderRadius: BorderRadius.circular(30)),
//                         child: CommonText(
//                           text: item.technology[index],
//                           style: true,
//                           fontSize: 16,
//                           color: AppColors.textColor,
//                         ),
//                       ),
//                     ),
//                   ),
//                   10.height,
//                   CommonText(
//                     text: "Key Features",
//                     fontWeight: FontWeight.bold,
//                     fontSize: 24,
//                   ),
//                   10.height,
//                   ListView.builder(
//                     itemCount: item.features.length,
//                     physics: NeverScrollableScrollPhysics(),
//                     shrinkWrap: true,
//                     itemBuilder: (context, index) {
//                       return Padding(
//                         padding: const EdgeInsets.only(bottom: 10),
//                         child: CommonText(
//                             maxLines: 3,
//                             fontSize: 15,
//                             style: true,
//                             color: AppColors.textColor,
//                             text: item.features[index]),
//                       );
//                     },
//                   ),
//                   10.height,
//                   CommonText(
//                     text: "Deployment",
//                     fontWeight: FontWeight.bold,
//                     fontSize: 24,
//                   ),
//                   20.height,
//                   CommonText(
//                       maxLines: 3,
//                       fontSize: 15,
//                       style: true,
//                       color: AppColors.textColor,
//                       text:
//                           "• Hosted on DigitalOcean, providing scalable cloud infrastructure."),
//                   10.height,
//                   CommonText(
//                       maxLines: 3,
//                       fontSize: 15,
//                       style: true,
//                       color: AppColors.textColor,
//                       text:
//                           "• Hosted on DigitalOcean, providing scalable cloud infrastructure."),
//                   20.height,
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Expanded(
//                         child: Container(
//                           padding: EdgeInsets.all(12),
//                           decoration: BoxDecoration(
//                               color: Color(0xffF3F4F6).withOpacity(0.4),
//                               borderRadius: BorderRadius.circular(10)),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               CommonText(text: "Year"),
//                               CommonText(text: item.completedYear)
//                             ],
//                           ),
//                         ),
//                       ),
//                       16.width,
//                       Expanded(
//                         flex: 2,
//                         child: Container(
//                           padding: EdgeInsets.all(12),
//                           decoration: BoxDecoration(
//                               color: Color(0xffF3F4F6).withOpacity(0.4),
//                               borderRadius: BorderRadius.circular(10)),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               CommonText(text: "Role"),
//                               CommonText(
//                                   maxLines: 3,
//                                   fontSize: 16,
//                                   text:
//                                       "Backend Development\nAPI Integration\nPayment Gateway Integration"),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
//                         decoration: BoxDecoration(
//                             color: AppColors.blue,
//                             borderRadius: BorderRadius.circular(30)),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Icon(
//                               Icons.open_in_new,
//                               size: 20,
//                             ),
//                             6.width,
//                             CommonText(
//                               text: "Play Store",
//                               color: Colors.black,
//                               fontSize: 18,
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(left: 12),
//                         padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
//                         decoration: BoxDecoration(
//                             color: AppColors.blue,
//                             borderRadius: BorderRadius.circular(30)),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Icon(
//                               Icons.open_in_new,
//                               size: 20,
//                             ),
//                             6.width,
//                             CommonText(
//                               text: "App Store",
//                               color: Colors.black,
//                               fontSize: 18,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         )
//       ],
//     ),
//   );
// }
