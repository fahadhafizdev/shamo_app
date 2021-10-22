import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shamo_app/models/categori_model.dart';

class CategoryService {
  String baseUrl = 'https://shamo-backend.buildwithangga.id/api';

  Future<List<CategoriModel>> getCategory() async {
    var url = '$baseUrl/categories';
    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(url, headers: headers);

    print('${response.statusCode}');
    print('${response.body}');

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<CategoriModel> category = data
          .map(
            (item) => CategoriModel.fromJson(item),
          )
          .toList();
      return category;
    } else {
      throw Exception('get category gagal');
    }
  }
}
