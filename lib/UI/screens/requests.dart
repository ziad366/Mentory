import '../widgets/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:mentory/UI/screens/search.dart';

class Session {
  String title;
  String description;
  String menteeName;
  DateTime dueDate;
  Session(
      {required this.title,
      required this.description,
      required this.dueDate,
      required this.menteeName});
}

class RequestsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sessions = [
      Session(
          menteeName: 'ahmed mohamed',
          dueDate: DateTime(2023, 4, 5, 5, 30),
          title: 'marketing',
          description: 'learn seo optimization'),
      Session(
          menteeName: 'ibrahim mohamed',
          dueDate: DateTime(2023, 4, 7, 5, 30),
          title: 'web dev',
          description: 'learn about declirative java script'),
      Session(
          menteeName: 'ahmed sayed',
          dueDate: DateTime(2023, 23, 8, 5, 30),
          title: 'UX',
          description: 'writing case studies'),
      Session(
          menteeName: 'maged mohamed',
          dueDate: DateTime(2024, 4, 5, 5, 30),
          title: 'dropshipping',
          description: 'exploring the hidden fitures of shpify'),
      Session(
          menteeName: 'islam mohamed',
          dueDate: DateTime(2025, 4, 5, 5, 30),
          title: 'marketing',
          description: 'learn seo optimization')
    ];
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text("Mentory"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchScreen(),
                ),
              );
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: sessions.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        "mentee ",
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.normal),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Text(
                          '${sessions[index].menteeName}',
                          style: TextStyle(
                            color: Colors.lightBlue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    sessions[index].title,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    sessions[index].description,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    '${sessions[index].dueDate.month.toString()} / ${sessions[index].dueDate.year.toString()} : ${sessions[index].dueDate.hour.toString()} - ${sessions[index].dueDate.minute.toString()}',
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          // TODO: Implement join button logic
                        },
                        child: const Text(
                          'decline',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // TODO: Implement join button logic
                        },
                        child: const Text('approve'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
