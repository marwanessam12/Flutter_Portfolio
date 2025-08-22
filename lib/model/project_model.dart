class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
    'Car Pooling',
    'Presenting "Carpooling" - a Flutter UI application that lets you decide which friend from Nile University would you ride with. Powered by firebase, Google Cloud API to launch the application',
    'assets/images/carpool.png',
    'https://github.com/marwanessam12/CarpoolApp',
  ),
  Project(
    'Coffee Shop Mobile App',
    'A Flutter-based mobile & web application for browsing coffee items, placing orders, chatting with drivers or other users, and making secure payments.',
    'assets/images/coffeeshop.png',
    'https://github.com/marwanessam12/CoffeeShop_mobile_app',
  ),
  // Project(
  //     'CUI Aider',
  //     'CUI AIDER is an extraordinary application that brings together augmented reality (AR), a robust student portal, intuitive class management, and a comprehensive GPA system, providing an all-encompassing solution for students.Using AR technology, CUI AIDER offers an immersive experience, allowing users to explore the complete university campus virtually. Through AR, students can visualize buildings, navigate with interactive directions, and gain a better understanding of their surroundings.',
  //     'assets/images/cui.png',
  //     'https://github.com/Hamad-Anwar/'),
  // Project(
  //     'Flutter Music Streaming Application',
  //     'A Flutter music streaming application that allows users to play audio files from local storage. The app features a beautiful neumorphic UI design and provides a smooth user experience for browsing and playing music.',
  //     'assets/images/player.png',
  //     'https://github.com/Hamad-Anwar/Neumorphic-Music_Player-Flutter'),
];
