import 'package:flutter/cupertino.dart';
import 'package:fooddelivery/model/RestaurantsBaseOnLocation.dart';


/// A class that Loads Restaurants. The data layer of the app.
abstract class RestaurantsRepository {

  /// Loads near by Restaurants depending on [latitude] and [longitude]
  Future<RestaurantsBaseOnLocation> getNearbyRestaurants({@required double latitude,@required double longitude});

}