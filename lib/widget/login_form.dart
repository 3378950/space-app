
import 'package:flutter/material.dart';

import '../theme.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _loginFormState();
}

class _loginFormState extends State<LoginForm> {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 35,
        top: 42,
        right: 35
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Login First",
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFF002251),
              letterSpacing: 0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 7),
          const Text(
              "Welcome to Another space",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF7A869A),
                letterSpacing: 0,
                fontWeight: FontWeight.w400
              ),
          ),
          const SizedBox(height: 35),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'username'
            ),
          ),
          const SizedBox(height: 25),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'password'
            ),
          ),
          const SizedBox(height: 24),

          const Text(
              "Forgot Password",
              style: TextStyle(
                fontSize: 13, 
                color: primary,
              ),
          ),
          FractionallySizedBox(
            widthFactor: 1,
            child: ElevatedButton(
                onPressed: () {},
                child: Text("Login")
            ),
          ),
          const SizedBox(height: 129),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Don't have an account?", style: TextStyle(
                color: Color(0xFF7A869A),
                letterSpacing: 0,
                fontSize: 14,
                fontWeight: FontWeight.w400
              )),
              Text("Sign up", style: TextStyle(
                color: primary
              ))
            ],
          )
        ],
      ),
    );
  }
}
