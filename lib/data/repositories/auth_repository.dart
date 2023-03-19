import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tawredat/core/network/api_end_points.dart';
import 'package:tawredat/core/network/dio_helper.dart';

class AuthRepository {
  static Future<Response> register({
    required String name,
    required String email,
    required String phone,
    required String password,
  }) async {

      final response = await DioHelper.postData(
        url: EndPoints.register,
        data:FormData.fromMap(
          {
            'UserName': name,
            'Email': email,
            'PhoneNumber': "+2$phone",
            'Password': password,
          },
        ),
      );
      return response;

  }

  static Future<Response> login({
    required String name,
    required String password,
  }) async {
    try {
      final response = await DioHelper.postData(
          url: EndPoints.login, data: {"UserName": name, "Password": password});
      return response;
    } on DioError {
      rethrow;
    }
  }
}
