import 'package:json_annotation/json_annotation.dart';
part 'geo.g.dart';

@JsonSerializable()
class Geo {
   double lat;
  final double lng;

  Geo(this.lat, this.lng);

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
  Map<String, dynamic> toJson() => _$GeoToJson(this);

   @override
  String toString() {
    return 'Geo{lat: $lat, lng: $lng}';
  }
}