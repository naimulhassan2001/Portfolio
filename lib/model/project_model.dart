class ProjectModel {
  final String name;
  final String shortDescription;
  final List images;
  final List technology;
  final List features;
  final String completedYear;
  final List role;
  final String playStoreUrl;
  final String appStoreUrl;

  ProjectModel({
    required this.name,
    required this.shortDescription,
    required this.images,
    required this.technology,
    required this.features,
    required this.completedYear,
    required this.role,
    this.playStoreUrl = "",
    this.appStoreUrl = "",
  });
}
