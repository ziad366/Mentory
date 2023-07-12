import '../widgets/text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(
                bottom: 40.0,
              ),
              child: const Image(
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customTextFormField(
                    fieldController: usernameController,
                    hintTxt: 'Enter Your User Name',
                    labelTxt: 'User Name',
                    validatorFunction: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your User Name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  customTextFormField(
                      fieldController: passwordController,
                      labelTxt: 'Password',
                      hintTxt: 'Enter your Password',
                      validatorFunction: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      }),
                  const SizedBox(height: 16.0),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: MaterialButton(
                      minWidth: 400,
                      height: 40,
                      color: Colors.blue,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          //TODO:login

                          Navigator.pushNamed(context, '/home');
                        }
                      },
                      child: const Text('Login'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Row(children: [
                      const Text('donvt have account.'),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signUp');
                        },
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
