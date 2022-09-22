import 'package:insta_copy/data/dummy_user_data.dart';
import 'package:insta_copy/models/user.dart';

class UserInfo {
  static List<User> get users {
    return dummyUser;
  }

  static int get userCount {
    return dummyUser.length;
  }
}
