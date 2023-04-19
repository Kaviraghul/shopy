import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shopy/app/constants.dart';
import 'package:shopy/data/response/response.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio Dio, {String baseUrl}) = _AppServiceClient;

  @POST("api/auth/login")
  Future<LoginResponse> login(
    @Field("email") String email,
    @Field("password") String password,
  );
}
