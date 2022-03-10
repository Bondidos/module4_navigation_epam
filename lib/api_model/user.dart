import 'package:json_annotation/json_annotation.dart';
import 'package:module4_navigation_epam/api_model/address.dart';
import 'package:module4_navigation_epam/api_model/company.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final Company company;

  User(this.id, this.name, this.username, this.email, this.address, this.phone,
      this.website, this.company);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String,dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() {
    return 'User id: $id, name: $name, username: $username, email: $email, address: $address, phone: $phone, website: $website, company: $company';
  }
}
