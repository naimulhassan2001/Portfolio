import 'package:flutter/cupertino.dart';
import 'package:portfolio/utils/app_string.dart';
import 'package:portfolio/view/component/text/common_text.dart';

import 'faq_item.dart';

Widget faqSection() {
  List faqs = [
    {
      "question": AppString.whatTypesOfServicesDoYourOffer,
      "answer": AppString.testText,
    },
    {
      "question": AppString.whatDoYouNeedFromMeToStartProject,
      "answer": AppString.testText,
    },
    {
      "question": AppString.howLongDoesTtTakeToCompleteProject,
      "answer": AppString.testText,
    },
    {
      "question": AppString.whatIsTheCostOfYourServices,
      "answer": AppString.testText,
    },
    {"question": AppString.doYouOfferRevisions, "answer": AppString.testText},
  ];

  return Column(
    children: [
      CommonText(
        text: AppString.faq,
        fontSize: 64,
        fontWeight: FontWeight.bold,
      ),
      CommonText(
        text: AppString.faqDetails,
        fontSize: 36,
        maxLines: 2,
        fontWeight: FontWeight.bold,
      ),

      ...List.generate(faqs.length, (index) => FaqItem(item: faqs[index])),
    ],
  );
}
