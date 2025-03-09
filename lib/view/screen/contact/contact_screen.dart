import 'package:flutter/material.dart';
import 'package:portfolio/helpers/my_extension.dart';

import '../../component/footer/footer.dart';
import '../../component/header/header.dart';
import 'widgets/contact_form.dart';
import 'widgets/faq_section.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            contactForm(),
            10.height,
            faqSection(),
            footer(),
          ],
        ),
      ),
    );
  }
}
