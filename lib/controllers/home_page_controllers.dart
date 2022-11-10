import 'package:get/get.dart';
import 'package:shoping_carts/apis/getProducts.dart';
import 'package:shoping_carts/model/product_model.dart';

class HomeController extends GetxController {
  late List<ProductModel> products;
  RxBool isLoading = true.obs;

  @override
  void onInit() {
    setProductFromApi();
    super.onInit();
  }

  Future<void> setProductFromApi() async {
    products = await getProducts();
    isLoading.value = false;
  }
}
