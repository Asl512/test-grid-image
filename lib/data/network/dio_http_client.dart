import 'package:dio/dio.dart';
import 'package:test_grid_images/data/network/api_common.dart';
import 'package:test_grid_images/data/network/http_client.dart';
import 'package:test_grid_images/data/network/network_logger.dart';

class DioHttpClient implements HttpClient {
  late Dio _dio;

  DioHttpClient() {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiCommon.host,
        connectTimeout: const Duration(milliseconds: 10000),
        receiveTimeout: const Duration(milliseconds: 10000),
        sendTimeout: const Duration(milliseconds: 10000),
        responseType: ResponseType.json,
      ),
    );

    _dio = dio;
    dio.interceptors.add(NetworkLogger());
  }

  @override
  Dio get dio => _dio;
}
