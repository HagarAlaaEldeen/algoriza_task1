import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/images/woolly-goals-1.png"),
            const Text(
              "Sign in",
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 22,
            ),
            TextFormField(),
            const SizedBox(
              height: 22,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                child: const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 15, color: Colors.white54),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 75, vertical: 13)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))))),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'or',
              style: TextStyle(fontSize: 11, color: Colors.grey),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                child: const Text(
                  'Sign With by Google',
                  style: TextStyle(fontSize: 15, color: Colors.blueAccent),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepPurpleAccent),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 75, vertical: 13)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))))),
            const SizedBox(
              height: 22,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text('Do not have an account?'),
                TextButton(onPressed: () {}, child: const Text('Register here'))
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            const Text(
                'Use the application according to policy rules. Any kinds of validations will be subject to sanctions'),
          ],
        ),
      ),
    ));
  }
}
