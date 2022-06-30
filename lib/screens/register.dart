import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/sign-up.png",
                height: 200,
              ),
              const Text(
                "Sign up",
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 22,
              ),
              TextFormField(
                initialValue: 'Eg. 12345678 ',
                maxLength: 15,
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.flag,
                    color: Colors.purple,
                  ),
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(
                    color: Colors.purple,
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              TextFormField(
                initialValue: 'Eg. 12345678 ',
                maxLength: 20,
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.flag,
                    color: Colors.purple,
                  ),
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Colors.purple,
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              TextFormField(
                initialValue: ' password',
                maxLength: 20,
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.flag,
                    color: Colors.purple,
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Colors.purple,
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 15, color: Colors.purple),
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
                    style: TextStyle(fontSize: 15, color: Colors.white54),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 75, vertical: 13)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))))),
              const SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Has any account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      child: const Text('Sign in here'))
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              const Text(
                  'By registering your account, you are agree to our terms and condition'),
            ],
          ),
        ),
      ),
    ));
  }
}
