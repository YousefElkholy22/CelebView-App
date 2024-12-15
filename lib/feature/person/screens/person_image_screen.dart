import 'package:final_project/core/theming/colors.dart';
import 'package:final_project/models/famous_person_model.dart';
import 'package:flutter/material.dart';

class PersonDetailsScreen extends StatelessWidget {
  final Results person;

  const PersonDetailsScreen({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackground,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:lightBackground,
        title: Text('${person.name}',style: TextStyle(color: darkBlue),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: person.profilePath != null
                  ? NetworkImage('https://image.tmdb.org/t/p/w200${person.profilePath}')
                  : const AssetImage('assets/no_image.png') as ImageProvider,
              radius: 80,
            ),
            const SizedBox(height: 20),
            Text(
              person.name ?? 'Unknown',
              style: const TextStyle(
                color: darkBlue,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  person.knownForDepartment != null
                      ? '${person.name} is known for ${person.knownForDepartment}. They have worked on several projects that showcase their talent and creativity.'
                      : 'No description available for ${person.name}.',
                  style: const TextStyle(
                    color: darkBlue,
                    fontSize: 16,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
