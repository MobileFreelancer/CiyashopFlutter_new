import 'package:ciyashopflutter/repository/user_authentication_repository.dart';
import 'package:flutter/material.dart';

class SignUpController extends ChangeNotifier {
  var tvName = TextEditingController();
  var tvEmail = TextEditingController();
  var tvPhone = TextEditingController();
  var tvPassword = TextEditingController();
  var tvConfirmPassword = TextEditingController();
  final UserAuthenticationRepositoryImpl _userAuthenticationRepository = UserAuthenticationRepositoryImpl();


}
