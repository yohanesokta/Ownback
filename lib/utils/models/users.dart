import "package:flutter_dotenv/flutter_dotenv.dart";
import "package:http/http.dart" as http;
import "dart:convert";

Future<Map<dynamic, dynamic>> createUsers(String name, String password, String email) async {
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
      : <String, dynamic>{'success': false, 'message': 'Empty response from server'};
}


Future <Map<dynamic, dynamic>> loginUsers(String password, String email) async {
  String apiUrl = dotenv.env['API_URL'] ?? 'http://localhost:3000';
  final response = await http.post(
    Uri.parse('$apiUrl/api/auth/login'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: '{"password": "$password", "email": "$email"}',
  );

  return response.body.isNotEmpty
      ? jsonDecode(response.body) as Map<String, dynamic>
      : <String, dynamic>{'success': false, 'message': 'Empty response from server'};
}