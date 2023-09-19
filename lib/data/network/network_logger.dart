import 'dart:developer';

import 'package:dio/dio.dart';

class NetworkLogger extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    log("""

      "========> HTTP Request 
      ====> connection method      : ${options.method}
      ====> base url               : ${options.path}
      ====> query                  : ${options.queryParameters}
      ====> body                   : ${options.data}
      ====> header                 : ${options.data}

      """);
    handler.next(options);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    log(""" 

      ========> HTTP Response      
      ====> connection method      : ${response.requestOptions.method}
      ====> base url               : ${response.requestOptions.path} 
      ====> full url               : ${response.realUri}
      ====> status code            : ${response.statusCode.toString()}
      
      """);
    handler.next(response);
  }

  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) {
    log(""" 

      ========> Dio error on request 
      ====> connection method   : ${err.requestOptions.method}
      ====> base url            : ${err.requestOptions.path} 
      ====> full url            : ${err.response?.realUri}
      ====> status code         : ${err.response?.statusCode}
      ====> status message      : ${err.response?.statusMessage}
      ====> error response      : ${err.response.toString()}
      ====> error message       : ${err.message}

      """);
    handler.next(err);
  }
}
