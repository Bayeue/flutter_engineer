import 'package:dio/dio.dart';

class AuthApi {
  static login(email, password) async {
    var formlogin = {
      "Email": email,
      "Password": password,
    };

    try {
      var dio = Dio();
      var response =
          await dio.post('http://3.0.50.89:19000/login', data: formlogin);

      return response;
    } catch (e) {
      return null;
    }
  }

  static register1(nama, email, phone, password) async {
    var formRegister = {
      "name": nama,
      "email": email,
      "password": password,
      "phone": phone
    };
    try {
      var dio = Dio();
      var response =
          await dio.post('http://3.0.50.89:19000/register', data: formRegister);
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
      var response = await dio.post('http://3.0.50.89:19000/validation',
          data: formValidation);
      return response;
    } catch (e) {
      return null;
    }
  }
}
