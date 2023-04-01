import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@routePage
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('login'),
    );
  }
}
