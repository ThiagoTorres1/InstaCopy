import 'package:insta_copy/data/dummy_data.dart';
import 'package:insta_copy/models/user.dart';

class UserInfo {
  List<User> _users = dummyUser;

  List<User> get user {
    return [..._users];
  }

  int get userCount {
    return _users.length;
  }
}
