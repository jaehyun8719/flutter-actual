import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_actual/restaurant/model/restaurant_detail_model.dart';
import 'package:retrofit/http.dart';

part 'restaurant_repository.g.dart';

@RestApi()
abstract class RestaurantRepository {
  factory RestaurantRepository(Dio dio, {String baseUrl})
  = _RestaurantRepository;

  // @GET('/')
  // paginate();

  @GET('/{id}')
  @Headers({
    'authorization': '',
  })
  Future<RestaurantDetailModel> getRestaurantDetail({
    @Path() required String id,
  });
}