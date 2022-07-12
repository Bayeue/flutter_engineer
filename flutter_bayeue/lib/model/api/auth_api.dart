import 'package:dio/dio.dart';
import 'package:flutter_bayeue/model/api/services.dart';
import 'package:flutter_bayeue/model/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthApi {
  static Future<LoginModel?> login(email, password) async {
    try {
      var formlogin = {
        "Email": email,
        "Password": password,
      };
      var dio = Dio();
      var response = await dio.post('${Url.baseUrl}/login', data: formlogin);
      print(response.data);
      var loginModel = LoginModel.fromJson(response.data);

      SharedPreferences sp = await SharedPreferences.getInstance();
      var token = sp.setString("token", loginModel.data!.token.toString());

      return loginModel;
    } catch (e) {
      return null;
    }
  }

  static register(nama, email, phone, password) async {
    var formRegister = {
      "name": nama,
      "email": email,
      "password": password,
      "phone": phone
    };
    try {
      var dio = Dio();
      var response =
          await dio.post('${Url.baseUrl}/register', data: formRegister);
      return response;
    } catch (e) {
      return null;
    }
  }

  static validation(code) async {
    var formValidation = {
      "code": code,
    };
    try {
      var dio = Dio();
      var response =
          await dio.post('${Url.baseUrl}/validation', data: formValidation);
      return response;
    } catch (e) {
      return null;
    }
  }

  static pin(code) async {
    var formValidation = {
      "pin": pin,
    };
    try {
      var dio = Dio();
      var response = await dio.post('${Url.baseUrl}/pin', data: formValidation);
      return response;
    } catch (e) {
      return null;
    }
  }

  static changeprofile(name, email, password, phone, file) async {
    var formValidation = {
      "name": name,
      "email": email,
      "password": password,
      "phone": phone,
      "file": file
    };
    try {
      var dio = Dio();
      var respone = await dio.post(
        '${Url.baseUrl}/user/profile',
      );
    } catch (e) {
      return null;
    }
  }
}
