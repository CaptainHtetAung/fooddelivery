import 'package:dio/dio.dart';
import 'package:fooddelivery/datasource/restaurants_repository.dart';
import 'package:fooddelivery/model/RestaurantsBaseOnLocation.dart';
import 'package:fooddelivery/network/network.dart';


/// A class that Loads Restaurants from the api
class RemoteRestaurantsRepository implements RestaurantsRepository{
  NetworkProvider _networkProvider;

  RemoteRestaurantsRepository(this._networkProvider);
  @override
  Future<RestaurantsBaseOnLocation> getNearbyRestaurants({double latitude, double longitude}) async{
     Response response= await _networkProvider.doPost(url: "/geocode",query: {
       "lat":latitude,
       "lon":longitude
     });
     return RestaurantsBaseOnLocation.fromJson(response.data);
  }

}