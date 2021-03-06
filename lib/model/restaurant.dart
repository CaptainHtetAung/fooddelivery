import 'package:fooddelivery/model/location.dart';
import 'package:fooddelivery/model/photo.dart';
import 'package:fooddelivery/model/review.dart';
import 'package:fooddelivery/model/user_rating.dart';

class Restaurant {
  String id;
  String name;
  String url;
  Location location;
  String averageCostForTwo;
  String priceRange;
  String currency;
  String thumb;
  String featuredImage;
  String photosUrl;
  String menuUrl;
  String eventsUrl;
  UserRating userRating;
  String hasOnlineDelivery;
  String isDeliveringNow;
  String hasTableBooking;
  String deeplink;
  String cuisines;
  String allReviewsCount;
  String photoCount;
  String phoneNumbers;
  List<Photos> photos;
  List<Review> allReviews;

  Restaurant(
      {this.id,
        this.name,
        this.url,
        this.location,
        this.averageCostForTwo,
        this.priceRange,
        this.currency,
        this.thumb,
        this.featuredImage,
        this.photosUrl,
        this.menuUrl,
        this.eventsUrl,
        this.userRating,
        this.hasOnlineDelivery,
        this.isDeliveringNow,
        this.hasTableBooking,
        this.deeplink,
        this.cuisines,
        this.allReviewsCount,
        this.photoCount,
        this.phoneNumbers,
        this.photos,
        this.allReviews});

  Restaurant.fromJson(Map<String, dynamic> json) {
    print( json['name']);
    id = json['id'];
    name = json['name'];
    url = json['url'];
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    averageCostForTwo = json['average_cost_for_two'].toString();
    priceRange = json['price_range'].toString();
    currency = json['currency'];
    thumb = json['thumb'];
    featuredImage = json['featured_image'];
    photosUrl = json['photos_url'];
    menuUrl = json['menu_url'];
    eventsUrl = json['events_url'];
    userRating = json['user_rating'] != null
        ? new UserRating.fromJson(json['user_rating'])
        : null;
    hasOnlineDelivery = json['has_online_delivery'].toString();
    isDeliveringNow = json['is_delivering_now'].toString();
    hasTableBooking = json['has_table_booking'].toString();
    deeplink = json['deeplink'];
    cuisines = json['cuisines'];
    allReviewsCount = json['all_reviews_count'];
    photoCount = json['photo_count'].toString();
    phoneNumbers = json['phone_numbers'];
    if (json['photos'] != null) {
      photos = new List<Photos>();
      json['photos'].forEach((v) {
        photos.add(new Photos.fromJson(v));
      });
    }
    if (json['all_reviews'] != null) {
      allReviews = new List<Review>();
      json['all_reviews'].forEach((v) {
        allReviews.add(new Review.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['url'] = this.url;
    if (this.location != null) {
      data['location'] = this.location.toJson();
    }
    data['average_cost_for_two'] = this.averageCostForTwo;
    data['price_range'] = this.priceRange;
    data['currency'] = this.currency;
    data['thumb'] = this.thumb;
    data['featured_image'] = this.featuredImage;
    data['photos_url'] = this.photosUrl;
    data['menu_url'] = this.menuUrl;
    data['events_url'] = this.eventsUrl;
    if (this.userRating != null) {
      data['user_rating'] = this.userRating.toJson();
    }
    data['has_online_delivery'] = this.hasOnlineDelivery;
    data['is_delivering_now'] = this.isDeliveringNow;
    data['has_table_booking'] = this.hasTableBooking;
    data['deeplink'] = this.deeplink;
    data['cuisines'] = this.cuisines;
    data['all_reviews_count'] = this.allReviewsCount;
    data['photo_count'] = this.photoCount;
    data['phone_numbers'] = this.phoneNumbers;
    if (this.photos != null) {
      data['photos'] = this.photos.map((v) => v.toJson()).toList();
    }
    if (this.allReviews != null) {
      data['all_reviews'] = this.allReviews.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
