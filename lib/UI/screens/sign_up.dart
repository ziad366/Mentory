import '../widgets/text_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  var firstnameController = TextEditingController();
  var lastnameController = TextEditingController();
  var usernameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var trackController = TextEditingController();
  int _selectedType = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
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
                      fieldController: firstnameController,
                      hintTxt: 'Enter Your First Name',
                      labelTxt: 'First Name',
                      validatorFunction: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your First Name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    customTextFormField(
                        fieldController: lastnameController,
                        labelTxt: 'Last Name',
                        hintTxt: 'Enter your Last Nmae',
                        validatorFunction: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your last Name';
                          }
                          return null;
                        }),
                    const SizedBox(height: 16.0),
                    customTextFormField(
                      fieldController: usernameController,
                      hintTxt: 'Enter Your User Name',
                      labelTxt: 'User Name',
                      validatorFunction: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    customTextFormField(
                        fieldController: emailController,
                        labelTxt: 'Email',
                        hintTxt: 'Enter your email',
                        validatorFunction: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your Email';
                          }
                          return null;
                        }),
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
                    customTextFormField(
                      fieldController: confirmPasswordController,
                      hintTxt: 'confirm Your user name',
                      labelTxt: 'Confirm Password',
                      validatorFunction: (value) {
                        if (value!.isEmpty) {
                          return 'Please confirm your password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    customTextFormField(
                        fieldController: trackController,
                        labelTxt: 'Type your Track',
                        hintTxt: 'Example: Java',
                        validatorFunction: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your track';
                          }
                          return null;
                        }),
                    const SizedBox(height: 16.0),
                    Column(
                      children: [
                        RadioListTile(
                          title: const Text('Mentor'),
                          value: 0,
                          groupValue: _selectedType,
                          onChanged: (int? value) {
                            setState(() {
                              _selectedType = value!;
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text('Mentee'),
                          value: 1,
                          groupValue: _selectedType,
                          onChanged: (int? value) {
                            setState(() {
                              _selectedType = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: MaterialButton(
                        minWidth: 400,
                        height: 40.0,
                        color: Colors.blue,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            //TODO: sign up action
                          }
                        },
                        child: const Text('Sign Up'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Row(children: [
                        const Text('already have account.'),
                        MaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Sign in',
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
      ),
    );
  }
}
