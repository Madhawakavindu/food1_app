import 'package:flutter/material.dart';
import 'package:food_app/components/my_button.dart';
import 'package:food_app/components/my_textfield.dart';
import 'package:food_app/services/auth/auth_service.dart';
import 'package:food_app/pages/home_page.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  // Register function
  void register() async {
    final auth = AuthService();

    // Check if passwords match
    if (passwordController.text.trim() !=
        confirmPasswordController.text.trim()) {
      showDialog(
        context: context,
        builder: (context) =>
            const AlertDialog(title: Text("Passwords don't match!")),
      );
      return;
    }

    try {
      // Sign up user
      await auth.signUpWithEmailPassword(
        emailController.text.trim(),
        passwordController.text.trim(),
      );

      // Make sure the widget is still in the tree
      if (!mounted) return;

      // Navigate to HomePage after successful registration
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(title: Text(e.toString())),
      );
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lock_open_rounded,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(height: 25),

              Text(
                "Let's create an account for you",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(height: 25),

              MyTextfield(
                controller: emailController,
                hintText: "Email",
                obscureText: false,
              ),
              const SizedBox(height: 10),

              MyTextfield(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),
              const SizedBox(height: 10),

              MyTextfield(
                controller: confirmPasswordController,
                hintText: "Confirm password",
                obscureText: true,
              ),
              const SizedBox(height: 20),

              MyButton(text: "Sign Up", onTap: register),
              const SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap:
                        widget.onTap ??
                        () {
                          // Optional fallback navigation to login page
                          Navigator.pop(context);
                        },
                    child: Text(
                      "Login now",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
