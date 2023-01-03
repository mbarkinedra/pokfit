import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pokfit/data/network/model_json/home_model.dart';

import '../../data/network/api/category_api.dart';
import '../../data/network/api/home_api.dart';
import '../../data/network/model_json/category_home_model.dart';

class HomeController extends GetxController {
  HomeApi homeApi = HomeApi();
  HomeModel? homeModel;

  CategoryApi categoryApi = CategoryApi();
  CategoryHomeModel? categoriesModel;

  @override
  void onInit() {
    print("object00000000000000000000000000000000000000000");
    super.onInit();
    homeApi.getData().then((value) {
      homeModel = value as HomeModel;
      print(value);
      update();
    });

    categoryApi.getData().then((value) {
      categoriesModel = value as CategoryHomeModel;
      update();
    });
  }
}
