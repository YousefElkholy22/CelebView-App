import 'package:final_project/core/theming/colors.dart';
import 'package:final_project/apis/models/famous_person_model.dart';
import 'package:final_project/feature/movie/screens/movie_details.dart';
import 'package:flutter/material.dart';

class PersonWorksScreen extends StatelessWidget {
  final Results person;

  const PersonWorksScreen({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackground,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: lightBackground,
        elevation: 0,
        title: Text(
          '${person.name} - Works',
          style: const TextStyle(fontSize: 20, color: darkBlue),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: person.knownFor?.length ?? 0,
        itemBuilder: (context, index) {
          var work = person.knownFor![index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MovieDetailsScreen(work: work),
                ),
              );
            },
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      'https://image.tmdb.org/t/p/w200${work.posterPath ?? ''}',
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.broken_image, size: 50, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    work.title ?? work.originalTitle ?? 'Unknown',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

