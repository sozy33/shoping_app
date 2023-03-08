import 'package:get/get.dart';

class GET_API extends GetConnect {
  var baseUrl = 'https://fakestoreapi.com/products?';

  Future<Response> getProducts() async {
    return await get(baseUrl!);
  }
}
