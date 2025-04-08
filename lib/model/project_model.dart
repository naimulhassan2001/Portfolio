class ProjectModel {
  ProjectModel({
    required this.name,
    required this.logo,
    this.playStoreUrl = '',
    this.appStoreUrl = '',
  });

  final String name;
  final String logo;
  final String playStoreUrl;
  final String appStoreUrl;
}
