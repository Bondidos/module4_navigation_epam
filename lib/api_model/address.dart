import 'package:json_annotation/json_annotation.dart';

import 'geo.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final Geo geo;

  Address(this.street, this.suite, this.city, this.zipcode, this.geo);

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);

  @override
  String toString() {
    return 'street: $street \nsuite: $suite \ncity: $city \nzipcode: $zipcode \ngeo: $geo';
  }
}
