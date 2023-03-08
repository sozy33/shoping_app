import 'package:get/get.dart';
import 'package:getxpro/conttoler/api.dart';

class controler extends GetxController {
  var isLoading = false.obs;
  var product_list = [].obs;

  controler() {
    getProducts();
  }

  getProducts() async {
    isLoading(true);
    var response = await GET_API().getProducts();
    product_list.assignAll(response.body);
    isLoading(false);
  }
}
