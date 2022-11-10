import 'package:http/http.dart' as http;
import 'package:shoping_carts/model/product_model.dart';

Future<List<ProductModel>> getProducts() async {
  http.Response response =
      await http.get(Uri.parse('https://fakestoreapi.com/products'));
  return productModelFromJson(response.body);
}
