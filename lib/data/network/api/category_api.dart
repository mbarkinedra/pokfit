import 'package:pokfit/data/config/consts_app.dart';

import '../model_json/abstract_json_resource.dart';
import '../model_json/category_home_model.dart';
import 'api_manager.dart';

class CategoryApi extends ApiManager {
  @override
  String apiUrl() {
    return ConstsApp.categoryUrl;
  }

  @override
  AbstractJsonResource fromJson(data) {
    return CategoryHomeModel.fromJson(data);
  }
}
