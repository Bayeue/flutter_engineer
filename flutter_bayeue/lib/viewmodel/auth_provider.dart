import 'package:flutter/cupertino.dart';

import 'package:flutter_bayeue/model/auth_api.dart';

class AuthProvider with ChangeNotifier {
  bool firstTime = true;

  void getStarted() {
    firstTime = false;
    notifyListeners();
  }

  login(email, password) async {
    var response = await AuthApi.login(email, password);
    if (response != null) {
      return true;
    } else {
      return false;
    }
  }

  register(
    nama,
    email,
    phone,
    password,
  ) async {
    print('object');
    await AuthApi.register1(nama, email, phone, password);
    print('object');
  }

  validation(
    code,
  ) async {
    print('object');
    await AuthApi.validation(code);
    print('object');
  }
}
