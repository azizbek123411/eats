import 'package:eats/ui/pages/auth_pages/sign_up_page.dart';
import 'package:eats/ui/pages/home_page.dart';
import 'package:eats/ui/widgets/buttons.dart';
import 'package:eats/ui/widgets/textfileds.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.login,
                size: 100,
                color: Colors.green,
              ),
              const SizedBox(
                height: 20,
              ),
              Textfileds(controller: emailController, hintText: "Email"),
              const SizedBox(
                height: 20,
              ),
              Textfileds(controller: passwordController, hintText: "Password"),
              const SizedBox(
                height: 40,
              ),
              Buttons(
                  h: 50,
                  onTap: () {
                    login(context);
                  },
                  r: 20,
                  text: 'Login',
                  w: 100),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ),
                  );
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
