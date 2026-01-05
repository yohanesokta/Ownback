import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> createUsers(String name, String password, String email) async {
  final respose = await Supabase.instance.client.from('users').insert({
    'name': name,
    'password': password,
    'email': email,
  });
}
