class Location {
  String address;
  String locality;
  String city;
  String latitude;
  String longitude;
  String zipcode;
  int countryId;

  Location(
      {this.address,
        this.locality,
        this.city,
        this.latitude,
        this.longitude,
        this.zipcode,
        this.countryId});

  Location.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    locality = json['locality'];
    city = json['city'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    zipcode = json['zipcode'];
    countryId = json['country_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['locality'] = this.locality;
    data['city'] = this.city;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['zipcode'] = this.zipcode;
    data['country_id'] = this.countryId;
    return data;
  }
}
