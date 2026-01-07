import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ownback/view/auth.dart';
import 'package:ownback/view/dashboard.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ownback',
      home: const Auth(),
      routes: <String, WidgetBuilder>{
        '/auth': (context) => const Auth(),
        '/dashboard': (context) => const Dashboard(),
      },
    );
  }
}
