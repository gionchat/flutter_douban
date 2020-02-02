import 'package:dio/dio.dart';
import 'package:flutter_douban/network/HttpConfig.dart';

class HttpLite{
  static Future request(String url,{String method = "get",Map<String,dynamic> params}) async {
    //１.TODO:init Dio
    BaseOptions baseOptions = BaseOptions(baseUrl: BASE_URL,connectTimeout: TIMEOUT);
    Dio dio = Dio(baseOptions);
    //2.TODO:send request
    Options options = Options(method: method);
    try{
      final data = await dio.request(url,queryParameters: params,options: options);
      return data;
    }on DioError catch(error){
      throw error;
    }

  }
}