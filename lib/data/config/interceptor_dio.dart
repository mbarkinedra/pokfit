
import 'package:dio/dio.dart'as di;
import 'package:get/get.dart';




class InterceptorDio extends di.Interceptor{


  @override
  void onRequest(di.RequestOptions options,di. RequestInterceptorHandler handler) {
    options.headers[ "authorization"]=  "Bearer 6|PitU6ZuhtMOaJXWxy3dF3p9g8gw2QSd8HH09yn9l";

    super.onRequest(options, handler);

  }

  @override
  void onError(di.DioError err,di. ErrorInterceptorHandler handler) {
    print("i get err");
    print("*"*100);
    print(err.toString());
    print("*"*100);
    Get.snackbar("err",err.message );

  }

  @override
  void  onResponse(di.Response response,di. ResponseInterceptorHandler handler) {
    if(response.statusCode==200||response.statusCode==201){

    }else{



      Get.snackbar("err", "message");
    }
    return super.onResponse(response, handler) ;}
}