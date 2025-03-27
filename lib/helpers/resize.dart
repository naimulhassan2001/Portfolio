import 'package:portfolio/utils/responsive.dart';

class Resize {
  static double homeImageSize() {
    if (Responsive.isMobile()) {
      return Responsive.isSize() * 0.50;
    }
    return Responsive.isSize() * 0.33;
  }

  static double homeMyNameTextSize() {
    if (Responsive.isMobile()) {
      return 30;
    } else if (Responsive.isTablet()) {
      return 40;
    } else {
      return 50;
    }
  }

  static double homeMyNameAboutSize() {
    if (Responsive.isMobile()) {
      return 20;
    } else if (Responsive.isTablet()) {
      return 28;
    } else {
      return 34;
    }
  }

  static int projectCrossCount() {
    if (Responsive.isSize() < 300) {
      return (Responsive.isSize() / 100).toInt();
    }
    if (Responsive.isMobile()) {
      return (Responsive.isSize() / 150).toInt();
    }
    if (Responsive.isTablet()) {
      return (Responsive.isSize() / 200).toInt();
    }
    return ((Responsive.isSize() - 50) / 200).toInt();
  }

  static double projectLogoSize() {
    if (Responsive.isMobile()) {
      return 100;
    }
    return 150;
  }

  static double projectMainAxisExtent() {
    if (Responsive.isSize() < 350) {
      return 210;
    }
    if (Responsive.isMobile()) {
      return 200;
    }
    if (Responsive.isTablet()) {
      return 250;
    }
    return 270;
  }

  static double projectNameTextSize() {
    if (Responsive.isMobile()) {
      return 12;
    } else if (Responsive.isTablet()) {
      return 16;
    }
    return 18;
  }

  static double projectStoreButtonSize() {
    if (Responsive.isMobile()) {
      return 12;
    } else if (Responsive.isTablet()) {
      return 16;
    }
    return 18;
  }

  static double projectClientProjectTextSize() {
    if (Responsive.isMobile()) {
      return 8;
    } else if (Responsive.isTablet()) {
      return 10;
    }
    return 12;
  }

  static double aboutAndContactButtonSpace() {
    if (Responsive.isMobile()) {
      return 20;
    } else if (Responsive.isTablet()) {
      return 40;
    }
    return 60;
  }


  static double featureTitleTextSize() {
    if (Responsive.isMobile()) {
      return 24;
    } else if (Responsive.isTablet()) {
      return 44;
    }
    return 64;
  }
}
