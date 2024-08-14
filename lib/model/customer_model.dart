import 'dart:convert';

CustomerModel customerModelFromJson(String str) => CustomerModel.fromJson(json.decode(str));
String customerModelToJson(CustomerModel data) => json.encode(data.toJson());
class CustomerModel {
  CustomerModel({
      this.id, 
      this.dateCreated, 
      this.dateCreatedGmt, 
      this.dateModified, 
      this.dateModifiedGmt, 
      this.email, 
      this.firstName, 
      this.lastName, 
      this.role, 
      this.username, 
      this.billing, 
      this.shipping, 
      this.isPayingCustomer, 
      this.ordersCount, 
      this.totalSpent, 
      this.avatarUrl, 
      this.metaData, 
      this.pgsProfileImage, 
      this.iosAppUrl,});

  CustomerModel.fromJson(dynamic json) {
    id = json['id'];
    dateCreated = json['date_created'];
    dateCreatedGmt = json['date_created_gmt'];
    dateModified = json['date_modified'];
    dateModifiedGmt = json['date_modified_gmt'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    role = json['role'];
    username = json['username'];
    billing = json['billing'] != null ? Billing.fromJson(json['billing']) : null;
    shipping = json['shipping'] != null ? Shipping.fromJson(json['shipping']) : null;
    isPayingCustomer = json['is_paying_customer'];
    ordersCount = json['orders_count'];
    totalSpent = json['total_spent'];
    avatarUrl = json['avatar_url'];
    if (json['meta_data'] != null) {
      metaData = [];
      json['meta_data'].forEach((v) {
        metaData?.add(MetaData.fromJson(v));
      });
    }
    pgsProfileImage = json['pgs_profile_image'];
    iosAppUrl = json['ios_app_url'];
  }
  int? id;
  String? dateCreated;
  String? dateCreatedGmt;
  String? dateModified;
  String? dateModifiedGmt;
  String? email;
  String? firstName;
  String? lastName;
  String? role;
  String? username;
  Billing? billing;
  Shipping? shipping;
  bool? isPayingCustomer;
  int? ordersCount;
  String? totalSpent;
  String? avatarUrl;
  List<MetaData>? metaData;
  String? pgsProfileImage;
  String? iosAppUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['date_created'] = dateCreated;
    map['date_created_gmt'] = dateCreatedGmt;
    map['date_modified'] = dateModified;
    map['date_modified_gmt'] = dateModifiedGmt;
    map['email'] = email;
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['role'] = role;
    map['username'] = username;
    if (billing != null) {
      map['billing'] = billing?.toJson();
    }
    if (shipping != null) {
      map['shipping'] = shipping?.toJson();
    }
    map['is_paying_customer'] = isPayingCustomer;
    map['orders_count'] = ordersCount;
    map['total_spent'] = totalSpent;
    map['avatar_url'] = avatarUrl;
    if (metaData != null) {
      map['meta_data'] = metaData?.map((v) => v.toJson()).toList();
    }
    map['pgs_profile_image'] = pgsProfileImage;
    map['ios_app_url'] = iosAppUrl;
    return map;
  }

}

MetaData metaDataFromJson(String str) => MetaData.fromJson(json.decode(str));
String metaDataToJson(MetaData data) => json.encode(data.toJson());
class MetaData {
  MetaData({
      this.id, 
      this.key, 
      this.value,});

  MetaData.fromJson(dynamic json) {
    id = json['id'];
    key = json['key'];
    value = json['value'];
  }
  int? id;
  String? key;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['key'] = key;
    map['value'] = value;
    return map;
  }

}

Shipping shippingFromJson(String str) => Shipping.fromJson(json.decode(str));
String shippingToJson(Shipping data) => json.encode(data.toJson());
class Shipping {
  Shipping({
      this.firstName, 
      this.lastName, 
      this.company, 
      this.address1, 
      this.address2, 
      this.city, 
      this.postcode, 
      this.country, 
      this.state, 
      this.phone,});

  Shipping.fromJson(dynamic json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    company = json['company'];
    address1 = json['address_1'];
    address2 = json['address_2'];
    city = json['city'];
    postcode = json['postcode'];
    country = json['country'];
    state = json['state'];
    phone = json['phone'];
  }
  String? firstName;
  String? lastName;
  String? company;
  String? address1;
  String? address2;
  String? city;
  String? postcode;
  String? country;
  String? state;
  String? phone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['company'] = company;
    map['address_1'] = address1;
    map['address_2'] = address2;
    map['city'] = city;
    map['postcode'] = postcode;
    map['country'] = country;
    map['state'] = state;
    map['phone'] = phone;
    return map;
  }

}

Billing billingFromJson(String str) => Billing.fromJson(json.decode(str));
String billingToJson(Billing data) => json.encode(data.toJson());
class Billing {
  Billing({
      this.firstName, 
      this.lastName, 
      this.company, 
      this.address1, 
      this.address2, 
      this.city, 
      this.postcode, 
      this.country, 
      this.state, 
      this.email, 
      this.phone,});

  Billing.fromJson(dynamic json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    company = json['company'];
    address1 = json['address_1'];
    address2 = json['address_2'];
    city = json['city'];
    postcode = json['postcode'];
    country = json['country'];
    state = json['state'];
    email = json['email'];
    phone = json['phone'];
  }
  String? firstName;
  String? lastName;
  String? company;
  String? address1;
  String? address2;
  String? city;
  String? postcode;
  String? country;
  String? state;
  String? email;
  String? phone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['company'] = company;
    map['address_1'] = address1;
    map['address_2'] = address2;
    map['city'] = city;
    map['postcode'] = postcode;
    map['country'] = country;
    map['state'] = state;
    map['email'] = email;
    map['phone'] = phone;
    return map;
  }

}