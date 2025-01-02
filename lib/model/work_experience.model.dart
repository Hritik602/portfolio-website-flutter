class WorkExperience {
  final String companyName;
  final String location;
  final String duration;
  final String role;
  final List<String> jobDescription;

  WorkExperience({
    required this.companyName,
    required this.location,
    required this.duration,
    required this.role,
    required this.jobDescription,
  });
}

final List<WorkExperience> workExperienceList = [
  WorkExperience(
    companyName: "Kalodhunga Creation",
    location: "Nepal",
    duration: "Dec 2024",
    role: "SDE 2",
    jobDescription: [
      "Worked as a Flutter Developer",
      "Developed an App (Nagarik Rojgar) - a job search portal for foreign countries and tracking job processes",
      "Developed a restaurant management system from scratch (Flutter Desktop)",
      "Developed a package for responsive design for Flutter Desktop",
      "Developed a package for MVVM pattern with provider",
      "Project Manager overseeing the development and delivery of the web interface, coordinating with the frontend team, ensuring project milestones and quality standards"
    ],
  ),
  WorkExperience(
    companyName: "Slice",
    location: "Bengaluru",
    duration: "Dec 2021 - Dec 2022",
    role: "SDE 1",
    jobDescription: [
      "Worked as a Flutter Developer",
      "Designed and developed a new user interface (Account aggregator flow) with Flutter",
      "Worked on native Android in the Borrow flow of Slice",
      "Worked on method channels to communicate with native Android",
      "Implemented reverse method channels to communicate from Flutter to native Android"
    ],
  ),
  WorkExperience(
    companyName: "ShoutNow",
    location: "Bengaluru",
    duration: "July 2020 - Dec 2021",
    role: "SDE 1",
    jobDescription: [
      "Worked as a Flutter Developer",
      "Designed and developed a new user interface",
      "Developed the ShoutNow Partner tool, currently in development",
      "Worked on network layer integration",
      "Managed app releases on the Google Play Store"
    ],
  ),
  WorkExperience(
    companyName: "ShoutNow",
    location: "Bengaluru",
    duration: "Jan 2020 - July 2020",
    role: "SDE Intern",
    jobDescription: [
      "Interned as a Flutter Developer",
      "Developed new analytics user interfaces"
    ],
  ),
];
