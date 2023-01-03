import '../../config/consts_app.dart';
import '../model_json/abstract_json_resource.dart';
import '../model_json/home_model.dart';
import 'api_manager.dart';

class HomeApi extends ApiManager {
  @override
  String apiUrl() {
    return ConstsApp.homeUrl;
  }

  @override
  AbstractJsonResource fromJson(data) {
    return HomeModel.fromJson(data);
  }
}
