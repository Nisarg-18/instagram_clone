class ProfileModel {
  String name;
  String instaName;
  String profilePhoto;
  String postPhoto;
  String caption;
  String date;
  String bio;
  bool isLiked = false;
  bool isSaved = false;
  String message;
  ProfileModel(
      {required this.name,
      required this.instaName,
      required this.profilePhoto,
      required this.postPhoto,
      required this.caption,
      required this.date,
      required this.bio,
      required this.isLiked,
      required this.isSaved,
      required this.message});
}

List<ProfileModel> profiles = [
  ProfileModel(
      message: 'Noicee. 30m',
      name: 'Jake Peralta',
      instaName: 'jake',
      profilePhoto: 'assets/jake.png',
      postPhoto: 'assets/jake2.jpg',
      caption: 'Noicee',
      date: '2 hours ago',
      isLiked: false,
      isSaved: false,
      bio: 'I\'m Gonna Keep Doing It Until You Guys Chime In. A-Noine-Noine!!'),
  ProfileModel(
      message: 'Liked a message. 1h',
      name: 'Amy Santiago',
      instaName: 'amy',
      profilePhoto: 'assets/amy.png',
      postPhoto: 'assets/amy2.jpg',
      caption: '',
      isLiked: false,
      isSaved: false,
      date: '3 hours ago',
      bio: 'I File Hard. I Need Strong Tabs.'),
  ProfileModel(
      message: 'Sure. 1h',
      name: 'Charles Boyle',
      instaName: 'boyle',
      profilePhoto: 'assets/charles.jpg',
      postPhoto: 'assets/charles2.jpg',
      caption: '',
      isLiked: false,
      isSaved: false,
      date: '10 hours ago',
      bio:
          'We Delay Our Decisions Until The Universe Makes Them For Us. That Way, We Never Make The A Wrong Choice.'),
  ProfileModel(
      message: 'Liked a message. 2h',
      name: 'Rosa Diaz',
      instaName: 'roro',
      profilePhoto: 'assets/rosa.jpg',
      postPhoto: 'assets/rosa2.jpg',
      caption: '',
      isLiked: false,
      isSaved: false,
      date: '4 hours ago',
      bio: 'Your Sadness Is Noted.'),
  ProfileModel(
      message: 'Regards, Captain Holt. 3h',
      name: 'Captain Holt',
      instaName: 'holt',
      profilePhoto: 'assets/holt.jpg',
      postPhoto: 'assets/holt2.jpg',
      caption: '',
      isLiked: false,
      isSaved: false,
      date: '5 hours ago',
      bio: 'The Statistical Analysis, It\'s So Beautiful.'),
  ProfileModel(
      message: 'Liked a message. 4h',
      name: 'Gina Linetti',
      instaName: 'gina',
      profilePhoto: 'assets/gina.jpg',
      postPhoto: 'assets/gina2.jpg',
      caption: '',
      isLiked: false,
      isSaved: false,
      date: '7 hours ago',
      bio: 'Okay, No Hard Feelings, But I Hate You. Not Joking. Bye.'),
  ProfileModel(
      message: 'See you at the gym. 6h',
      name: 'Terry Crews',
      instaName: 'terry',
      profilePhoto: 'assets/terry.png',
      postPhoto: 'assets/terry2.jpg',
      caption: '',
      isLiked: false,
      isSaved: false,
      date: '2 days ago',
      bio: 'I Was Born Ready...'),
  ProfileModel(
      message: 'Liked a message. 6h',
      name: 'Hitchcock',
      instaName: 'hitchcock',
      profilePhoto: 'assets/hitchcock2.jpg',
      postPhoto: 'assets/hitchcock2.jpg',
      caption: '',
      isLiked: false,
      isSaved: false,
      date: '9 hours ago',
      bio: 'Can’t Spill Food On Your Shirt If You’re Not Wearing One'),
  ProfileModel(
      message: 'Liked a message. 8h',
      name: 'Scully',
      instaName: 'skully',
      profilePhoto: 'assets/scully.png',
      postPhoto: 'assets/scully.png',
      caption: '',
      isLiked: false,
      isSaved: false,
      date: '1 day ago',
      bio: 'Yes, Please. Take Me To The Land Of Vending Machines.'),
];
