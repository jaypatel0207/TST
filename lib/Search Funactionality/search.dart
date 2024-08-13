import 'package:flutter/material.dart';
import 'package:flutter_splash_screens/Search%20Funactionality/profile.dart';
import 'package:get/get.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Jay", "Number": "+91 8980805595"},
    {"id": 2, "name": "Shreya", "Number": "+91 9726811770"},
    {"id": 3, "name": "Siddhi", "Number": "+91 8128997101"},
    {"id": 4, "name": "Papa", "Number": "+91 9227218450"},
    {"id": 5, "name": "Mummy", "Number": "+91 9328040053"},
    {"id": 6, "name": "Anuj", "Number": "+91 8460018450"},
    {"id": 7, "name": "Bhabhi", "Number": "+91 9876543210"},
    {"id": 8, "name": "Arin", "Number": "+91 123456789"},
    {"id": 9, "name": "Shreya's Papa", "Number": "+91 5432189220"},
    {"id": 10, "name": "Shreya's Mom", "Number": "+91 8742016587"},
    {"id": 11, "name": "Arya", "Number": "+91 2222333888"},
    {"id": 12, "name": "Khwaish", "Number": "+91 1111111111"},
    {"id": 13, "name": "Adhya", "Number": "+91 8980805595"},
    {"id": 14, "name": "Guddi", "Number": "+91 8980805595"},
    {"id": 15, "name": "Vyoma", "Number": "+91 9712018450"},
  ];

  List<Map<String, dynamic>> _foundUsers = [];

  @override
  void initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase())||user["Number"].toString().contains(enteredKeyword))
          .toList();
    }

    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List View Search',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) => _runFilter(value),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: "Search ",
                    suffixIcon: Icon(Icons.search)),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: _foundUsers.length,
                itemBuilder: (context, index) {
                  return Card(
                    key: ValueKey(_foundUsers[index]["id"]),
                    color: Colors.blue,
                    elevation: 4,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      onTap: () {
                          Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile(name: _foundUsers[index]["name"], number: _foundUsers[index]["Number"],)));






                        // Get.to(Profile(
                        //   name: _foundUsers[index]["name"],
                        //   number: _foundUsers[index]["Number"],
                        // ));
                      },
                      leading: Text(
                        _foundUsers[index]["id"].toString(),
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                      title: Text(
                        _foundUsers[index]["name"],
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        "${_foundUsers[index]["Number"].toString()}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
