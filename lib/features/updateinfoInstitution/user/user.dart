class User {
  String image;
  String name;
  String email;
  String phone;
  String aboutMeDescription;
  String password;
  String id;
  String address;
  String workingHours;
  String city;

  // Constructor
  User({
    required this.image,
    required this.name,
    required this.email,
    required this.phone,
    required this.aboutMeDescription,
    required this.password,
    required this.id,
    required this.address,
    required this.workingHours,
    required this.city,

  });

  User copy({
    String? imagePath,
    String? name,
    String? phone,
    String? email,
    String? about,
    String? password,
    String? id,
    String? address,
    String? workingHours,
    String? city,

  }) =>
      User(
        image: imagePath ?? this.image,
        name: name ?? this.name,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        aboutMeDescription: about ?? this.aboutMeDescription,
        password: password ?? this.password,
        id: id ?? this.id,
        address: address ?? this.address,
        workingHours: workingHours ?? this.workingHours,
        city: city ?? this.city,


      );


  static User fromJson(Map<String, dynamic> json) => User(
    image: json['imagePath'],
    name: json['name'],
    email: json['email'],
    aboutMeDescription: json['about'],
    phone: json['phone'],
    password: json['password'],
    id: json['id'],
    address: json['address'],
    workingHours: json['workingHours'],
    city: json['city'],
  );

  Map<String, dynamic> toJson() => {
    'imagePath': image,
    'name': name,
    'email': email,
    'about': aboutMeDescription,
    'phone': phone,
    'password': password,
    'id': id,
    'address': address,
    'workingHours': workingHours,
    'city': city,
  };
}