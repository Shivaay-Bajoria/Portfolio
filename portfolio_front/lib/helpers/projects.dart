class Projects {
  final String title;
  final String short_description;
  final String long_description;
  final String githubUrl;
  final List<String> techStack;

  Projects({
    required this.title,
    required this.short_description,
    required this.long_description,
    required this.githubUrl,
    required this.techStack,
  });

  factory Projects.fromJson(Map<String, dynamic> json) {
    return Projects(
      title: json['title'],
      short_description: json['description'],
      long_description: json['longDescription'],
      githubUrl: json['githubUrl'],
      techStack: List<String>.from(json['techStack']),
    );
  }
}
