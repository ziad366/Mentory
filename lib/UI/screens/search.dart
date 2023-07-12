import '../widgets/text_field.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  customTextFormField(
                    fieldController: usernameController,
                    hintTxt: 'Enter Your search key',
                    labelTxt: 'search',
                    validatorFunction: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your search key';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: MaterialButton(
                      height: 40,
                      color: Colors.blue,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          //TODO:Search result
                        }
                      },
                      child: const Text('Search'),
                    ),
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
