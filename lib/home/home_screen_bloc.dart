import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:fooddelivery/home/home.dart';
import 'package:fooddelivery/base_bloc.dart';
import 'package:fooddelivery/datasource/restaurants_repository.dart';
import 'package:fooddelivery/model/RestaurantsBaseOnLocation.dart';
import 'package:fooddelivery/model/restaurant.dart';
import 'package:geolocator/geolocator.dart';
import 'package:rxdart/rxdart.dart';

class HomeScreenBloc implements BaseBloc {

  RestaurantsRepository restaurantsRepository;
  BehaviorSubject<List<Restaurant>> nearbyRestaurantsStream = BehaviorSubject();
  HomeScreenBloc({@required this.restaurantsRepository});



  ///fetch current locations and call to [_loadNearByRestaurants]
  ///this will be call by [initState] from the [HomeScreenState]
  void init()  {
    Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((position) => _loadNearByRestaurants(position: position));
  }

  ///loading near by restaurants depending on [position]
  _loadNearByRestaurants({@required Position position}) async {
    print(position.toString());
    RestaurantsBaseOnLocation restaurantsBaseOnLocation= await restaurantsRepository.getNearbyRestaurants(latitude: position.latitude, longitude: position.longitude);

    ///emit the nearby restaurants list
    nearbyRestaurantsStream.add(restaurantsBaseOnLocation.nearbyRestaurants);
  }

  @override
  void dispose() {
    nearbyRestaurantsStream.close();
  }

}