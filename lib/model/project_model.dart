class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  final bool isGithub;
  Project(this.name, this.description, this.image, this.link, this.isGithub);
}

List<Project> projectList = [
  Project(
    'Statemanagement (MVVM Pattern with Provider)',
    'State management using the MVVM pattern with Provider, featuring a shared ViewModel for seamless data flow and reactivity across the app.',
    'assets/images/coffee.png',
    'https://github.com/kalodhunga-creation/state_management.git',
    true,
  ),
  Project(
    'Network Layer Flutter',
    'Package for efficient and streamlined network communication, providing easy-to-use utilities for API requests, response handling, and error management.',
    'assets/images/coffee.png',
    'https://github.com/kalodhunga-creation/network_layer_flutter.git',
    true,
  ),
  Project(
    'Responsive Framework',
    'This Flutter widget setup enables responsive scaling of UI elements based on predefined breakpoints using the ResponsiveScaleRoot widget and the ScaleInBetween class',
    'assets/images/coffee.png',
    'https://github.com/shiwam77/responsive_framework_v2.git',
    true,
  ),
  Project(
    'Restaurant management System',
    'Discover your ideal job: search, apply, track applications, get real-time alerts, and stay updated on your job status. Start your job search journey today! .Restaurant management System is made with Flutter Desktop ',
    'assets/images/coffee.png',
    '',
    false,
  ),
  Project(
      'Nagarik Rojgar',
      'Discover your ideal job: search, apply, track applications, get real-time alerts, and stay updated on your job status. Start your job search journey today!',
      'assets/images/coffee.png',
      'https://play.google.com/store/apps/details?id=com.nagarikrojgar.kdcManPower&pcampaignid=web_share',
      false),
  Project(
      'Nagarik Rojgar Web',
      'Discover your ideal job: search, apply, track applications, get real-time alerts, and stay updated on your job status. Start your job search journey today!',
      'assets/images/coffee.png',
      'https://nagarikrojgar.com/',
      false),
  Project(
      'Slice',
      'Slice is a fintech startup focused on India’s youngsters. we aim to build a smart, simple, and transparent financial platform to redesign the financial experience for the millennials. ',
      'assets/images/coffee.png',
      'https://play.google.com/store/apps/details?id=indwin.c3.shareapp&pcampaignid=web_share',
      false),
];
