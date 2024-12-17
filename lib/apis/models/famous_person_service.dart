import 'package:dio/dio.dart';
import 'package:final_project/apis/models/famous_person_model.dart';

class FamousPersonService {
  var dio = Dio();

  Future<FamousPerson?> getFamousPeople() async {
    try {
      var response = await dio.request(
        'https://api.themoviedb.org/3/person/popular?api_key=2dfe23358236069710a379edd4c65a6b',
        options: Options(method: 'GET'),
      );

      if (response.statusCode == 200) {
        var data = response.data;
        FamousPerson famousPerson = FamousPerson.fromJson(data);
        return famousPerson;
      } else {
        print(response.statusMessage);
        return null;
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
