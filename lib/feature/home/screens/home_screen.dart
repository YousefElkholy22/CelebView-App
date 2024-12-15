import 'package:final_project/core/theming/colors.dart';
import 'package:final_project/models/famous_person_model.dart';
import 'package:final_project/models/famous_person_service.dart';
import 'package:final_project/screens/home_screen_content.dart';
import 'package:final_project/screens/favorites_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FamousPersonService famousPersonService = FamousPersonService();
  FamousPerson? famousPerson;
  List<Results>? searchResults;
  bool isLoading = true;
  bool isSearchVisible = false;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    famousPerson = await famousPersonService.getFamousPeople();
    setState(() {
      isLoading = false;
      searchResults = famousPerson?.results;
    });
  }

  void search(String query) {
    setState(() {
      searchResults = famousPerson?.results
          ?.where((person) => person.name!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackground,
      appBar: AppBar(
        
        backgroundColor: lightBackground,
        title: const Text(
          'Home',
          style: TextStyle(color:darkBlue,fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color:darkBlue),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  FavoritesScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.search, color: darkBlue),
            onPressed: () {
              setState(() {
                isSearchVisible = !isSearchVisible;
              });
            },
          ),
        ],
      ),
      body: Column(
        children: [
          if (isSearchVisible)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: lightBackground,
                  hintText: 'Search',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: mediumBlue),
                  ),
                ),
                onChanged: (value) => search(value),
              ),
            ),
          Expanded(
            child: isLoading
                ? const Center(
                    child: CircularProgressIndicator(color: Colors.tealAccent),
                  )
                : HomeScreenContent(searchResults: searchResults!),
          ),
        ],
      ),
    );
  }
}
