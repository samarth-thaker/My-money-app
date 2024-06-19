import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void login() {
    Navigator.pushNamed(context, '/login_page');
  }

  void signUp() {
    Navigator.pushNamed(context, '/sign_up');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 249, 250),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: login,
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: const BorderSide(
                        color: Color.fromARGB(255, 108, 117, 125)),
                  ),
                ),
              ),
              child: const Text(
                "Login",
                style: TextStyle(color: Color.fromARGB(225, 25, 25, 112)),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: signUp,
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: const BorderSide(
                        color: Color.fromARGB(255, 108, 117, 125)),
                  ),
                ),
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(color: Color.fromARGB(225, 25, 25, 112)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
