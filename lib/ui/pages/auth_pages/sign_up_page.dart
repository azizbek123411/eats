import 'package:eats/ui/pages/auth_pages/login_page.dart';
import 'package:eats/ui/pages/home_page.dart';
import 'package:eats/ui/widgets/buttons.dart';
import 'package:eats/ui/widgets/textfileds.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();


void signUp(context){


Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage(),),);


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
                Icons.account_circle_rounded,
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
                height: 20,
              ),
                Textfileds(controller: confirmPasswordController, hintText: "Confirm Password"),
              const SizedBox(
                height: 40,
              ),
              Buttons(h: 50, onTap: () {
                signUp(context);
              }, r: 20, text: 'Sign Up', w: 100,),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: const Text(
                  'Login',
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
