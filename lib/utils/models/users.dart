import "package:flutter_dotenv/flutter_dotenv.dart";
import "package:http/http.dart" as http;
import 'package:shared_preferences/shared_preferences.dart';
import "dart:convert";

Future<bool> checkIsAuthenticated() async {
  final SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
  String apiUrl = dotenv.env['API_URL'] ?? 'http://localhost:3000';
  final String storedToken = sharedPrefs.getString('auth_token') ?? '';
  if (storedToken.isEmpty) {
    return false;
  }

  final response = await http.get(
    Uri.parse('$apiUrl/api/users/me'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $storedToken',
    },
  );
  print('Authentication check response status: ${response.statusCode}');
  return response.statusCode == 200;
}

Future<Map<dynamic, dynamic>> createUsers(
  String name,
  String password,
  String email,
) async {
  String apiUrl = dotenv.env['API_URL'] ?? 'http://localhost:3000';
  final response = await http.post(
    Uri.parse('$apiUrl/api/auth/register'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: '{"name": "$name", "password": "$password", "email": "$email"}',
  );

  return response.body.isNotEmpty
      ? jsonDecode(response.body) as Map<String, dynamic>
      : <String, dynamic>{
          'success': false,
          'message': 'Empty response from server',
        };
}

Future<Map<dynamic, dynamic>> loginUsers(String password, String email) async {
  SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
  String apiUrl = dotenv.env['API_URL'] ?? 'http://localhost:3000';
  final response = await http.post(
    Uri.parse('$apiUrl/api/auth/login'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: '{"password": "$password", "email": "$email"}',
  );

  if (response.statusCode == 200) {
    final responseData = jsonDecode(response.body) as Map<String, dynamic>;
    if (responseData.containsKey('data') &&
        responseData['data'] is Map &&
        responseData['data'].containsKey('token')) {
        await sharedPrefs.setString('auth_token', responseData['data']['token'] as String, );
    }
  }


  return response.body.isNotEmpty
      ? jsonDecode(response.body) as Map<String, dynamic>
      : <String, dynamic>{
          'success': false,
          'message': 'Empty response from server',
        };
}
