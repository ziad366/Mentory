import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _notificationEnabled = true;

  @override
  void initState() {
    super.initState();
    // Initialize the text controllers with the user's current information
    _nameController.text = 'John Doe';
    _phoneController.text = '555-555-5555';
    _emailController.text = 'johndoe@example.com';
    _passwordController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Personal Information',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _phoneController,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: 32.0),
              const Text(
                'Change Password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Current Password',
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'New Password',
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Confirm New Password',
                ),
              ),
              const SizedBox(height: 32.0),
              const Text(
                'Notification Settings',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 16.0),
              SwitchListTile(
                value: _notificationEnabled,
                onChanged: (value) {
                  setState(() {
                    _notificationEnabled = value;
                  });
                },
                title: const Text('Enable Notifications'),
              ),
              ElevatedButton(
                  onPressed: () {}, child: const Text('Save changes')),
            ],
          ),
        ),
      ),
    );
  }
}
