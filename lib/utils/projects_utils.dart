class ProjectsUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectsUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink
  });
}

// projects

List<ProjectsUtils> workProjectUtils = [
  ProjectsUtils(
    image: "assets/projects/weatherapp.png",
     title: "Weather App",
      subtitle: "This is a API conected and users friendly weather app",
      ),
      ProjectsUtils(
    image: "assets/projects/calculator.png",
     title: "Calculator App",
      subtitle: "This is a user friendly and simple app for calculating",
      ),
      ProjectsUtils(
    image: "assets/projects/website.png",
     title: "Portfoli Website",
      subtitle: "This is my website. It will be used to my personal bio data adding",
      ),
      ProjectsUtils(
    image: "assets/projects/whatsapp.png",
     title: "Whatsapp App",
      subtitle: "This is a whatsapp app for all of the ui designs are included",
      ),
      ProjectsUtils(
    image: "assets/projects/facebook.png",
     title: "Facebook App",
      subtitle: "This is a simple code base created app",
      ),
      ProjectsUtils(
    image: "assets/projects/blooddonate.png",
     title: "Blooddonation App",
      subtitle: "This is boolddonating intrested persons data adding app ",
      ),
];