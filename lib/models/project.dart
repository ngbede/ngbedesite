class Project {
  final String title;
  final String url;
  final List<String> topics;
  final String description;
  final String? imgPath;

  Project({
    required this.title,
    required this.url,
    required this.topics,
    required this.description,
    this.imgPath,
  });
}
