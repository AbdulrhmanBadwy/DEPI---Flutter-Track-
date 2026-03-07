class ProfileModel {
  final String name;
  final String job;
  final String summary;
  final List<Map<String, String>> lastProjects;
  final String image;

  ProfileModel({
    required this.image,
    required this.name,
    required this.job,
    required this.summary,
    required this.lastProjects,
  });
}

ProfileModel profileModel = ProfileModel(
  name: 'Abdulrhman Badwy',
  image: 'assets/images/me1.jpg',
  job: 'Junior Flutter developer',
  summary:
      'Computer Science student with a strong technical foundation in C++, Object-Oriented'
      'Programming, Data Structures, and Algorithms, currently specializing in Flutter mobile'
      'application development using Dart. Seeking an internship or entry-level software development'
      'role to apply skills in building efficient, scalable applications, writing clean and maintainable'
      '  code, and contributing to real-world projects while continuously enhancing technical and'
      '  problem-solving abilities',
  lastProjects: [
    {
      'title': 'Flutter Mobile Application (Training Project)',
      'description':
          'o Develop a cross-platform mobile application using Flutter and Dart.Built a simple interactive game using Java.Built a simple interactive game using Java.Built a simple interactive game using Java.Built a simple interactive game using Java.',
    },
    {
      'title': 'Java Game Project – Catch the Ball',
      'description':
          'Built a simple interactive game using Java.Built a simple interactive game using Java.Built a simple interactive game using Java.Built a simple interactive game using Java.'
          'Applied OOP Concepts and basic game logic.',
    },
  ],
);
