import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shamo_app/models/product_model.dart';

class ProductService {
  String baseUrl = 'https://shamo-backend.buildwithangga.id/api';

  Future<List<ProductModel>> getProduct() async {
    var url = '$baseUrl/products';

    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(url, headers: headers);

    print('${response.statusCode}');
    print('${response.body}');

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ProductModel> product = data
          .map(
            (item) => ProductModel.fromJson(item),
          )
          .toList();

      return product;
    } else {
      throw Exception('Error Load Data');
    }
  }
}
