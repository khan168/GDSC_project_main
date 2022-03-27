class usermodel{
  String image;
  String name;
  String email;
  String phone;
  String aboutMeDescription;

  // Constructor
  usermodel({
    required this.image,
    required this.name,
    required this.email,
    required this.phone,
    required this.aboutMeDescription,
  });

  usermodel copy({
    String? imagePath,
    String? name,
    String? phone,
    String? email,
    String? about,
  }) =>
      usermodel(
        image: imagePath ?? this.image,
        name: name ?? this.name,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        aboutMeDescription: about ?? this.aboutMeDescription,
      );

  static usermodel fromJson(Map<String, dynamic> json) => usermodel(
    image: json['imagePath'],
    name: json['name'],
    email: json['email'],
    aboutMeDescription: json['about'],
    phone: json['phone'],
  );

  Map<String, dynamic> toJson() => {
    'imagePath': image,
    'name': name,
    'email': email,
    'about': aboutMeDescription,
    'phone': phone,
  };
}