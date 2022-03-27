import 'dart:convert';

import 'user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserData {
  static late SharedPreferences _preferences;
  static const _keyUser = 'user';

  static User myUser = User(
    image: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngegg.com%2Fen%2Fsearch%3Fq%3Dcharity&psig=AOvVaw3bLcuezHsxNHiqVXXjEsv4&ust=1648478132776000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNCTpODB5vYCFQAAAAAdAAAAABAD',
    name: 'Red Cross',
    email: 'RedCross@gmail.com',
    phone: '(208)-206-5039',
    aboutMeDescription: 'iusm alodo consequat...',
    password:'REDcross!200',
    id: '12',
    address:'4202 E. Fowler Avenue',
    workingHours: '5am to 8pm',
    city: 'tampa',

  );

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(User user) async {
    final json = jsonEncode(user.toJson());

    await _preferences.setString(_keyUser, json);
  }

  static User getUser() {
    final json = _preferences.getString(_keyUser);

    return json == null ? myUser : User.fromJson(jsonDecode(json));
  }
}