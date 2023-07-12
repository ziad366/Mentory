import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'Mentory',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('profile'),
            onTap: () {
              Navigator.pushNamed(context, '/menteeProf');
            },
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Requests'),
            onTap: () {
              Navigator.pushNamed(context, '/requests');
              // TODO: Implement home screen navigation
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/setting');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.question_answer_outlined),
            title: const Text('frequently asked questions'),
            onTap: () {
              Navigator.pushNamed(context, '/fqAndA');
              //TODO: delete token
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () {
              Navigator.pushNamed(context, '/');
              //TODO: delete token
            },
          ),
        ],
      ),
    );
  }
}
