import 'package:fooddelivery/model/locality.dart';
import 'package:fooddelivery/model/popularity.dart';
import 'package:fooddelivery/model/restaurant.dart';

class RestaurantsBaseOnLocation {
  Locality locality;
  Popularity popularity;
  String link;
  List<Restaurant> nearbyRestaurants;

  RestaurantsBaseOnLocation(
      {this.locality, this.popularity, this.link, this.nearbyRestaurants});

  RestaurantsBaseOnLocation.fromJson(Map<String, dynamic> json) {
    locality = json['locality'] != null
        ? new Locality.fromJson(json['locality'])
        : null;
    popularity = json['popularity'] != null
        ? new Popularity.fromJson(json['popularity'])
        : null;
    link = json['link'];
    if (json['nearby_restaurants'] != null) {
      nearbyRestaurants = new List<Restaurant>();
      print("Near RES"+json['nearby_restaurants'].toString());
      json['nearby_restaurants'].forEach((v) {
        print("get res");
        nearbyRestaurants.add(new Restaurant.fromJson(v["restaurant"]));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.locality != null) {
      data['locality'] = this.locality.toJson();
    }
    if (this.popularity != null) {
      data['popularity'] = this.popularity.toJson();
    }
    data['link'] = this.link;
    if (this.nearbyRestaurants != null) {
      data['nearby_restaurants'] =
          this.nearbyRestaurants.map((v) => v.toJson()).toList();
    }
    return data;
  }
}









