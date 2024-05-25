import 'package:demo_tes/components/my_button.dart';
import 'package:demo_tes/components/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25),

            // Message, app slogan
            Text(
              "Food Delivery App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25),

            // email text field
            MyTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),

            const SizedBox(height: 10),

            // password textfield
            MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),

            const SizedBox(height: 25),

            // sign in button
            MyButton(
              text: "Sign In",
              onTap: () {},
            ),

            const SizedBox(height: 25),

            // not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a Member?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register now",
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
    );
  }
}
