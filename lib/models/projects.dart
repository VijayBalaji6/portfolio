class Project {
  String projectName;
  String projectDescription;
  String projectUrl;

  Project({
    required this.projectName,
    required this.projectDescription,
    this.projectUrl = "",
  });
}
