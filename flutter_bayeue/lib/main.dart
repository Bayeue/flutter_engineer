import 'package:flutter/material.dart';
import 'package:flutter_bayeue/pages/login/started_page.dart';
import 'package:flutter_bayeue/viewmodel/auth_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthProvider(),
        ),
      ],
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StartedPage(),
      ),
    );
  }
}
