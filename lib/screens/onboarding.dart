import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Logo",
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 22,
            ),
            Image.asset("assets/images/woolly-goals-1.png"),
            const SizedBox(
              height: 22,
            ),
            const Text(
              'Get food delivery to your doorstep asap',
            ),
            const SizedBox(
              height: 22,
            ),
            const Text(
                'We have young and professional delivery team that will bring your food as soon as possible to your doorstep'),
            const SizedBox(
              height: 22,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 15, color: Colors.white54),
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
                TextButton(onPressed: () {}, child: const Text('Sign Up'))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
