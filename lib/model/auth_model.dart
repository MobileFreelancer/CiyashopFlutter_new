import 'dart:convert';
AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));
String authModelToJson(AuthModel data) => json.encode(data.toJson());
class AuthModel {
  AuthModel({
    this.status,
    this.cookie,
    this.cookieName,
    this.user,});

  AuthModel.fromJson(dynamic json) {
    status = json['status'];
    cookie = json['cookie'];
    cookieName = json['cookie_name'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  String? status;
  String? cookie;
  String? cookieName;
  User? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['cookie'] = cookie;
    map['cookie_name'] = cookieName;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }

}

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());
class User {
  User({
    this.id,
    this.username,
    this.nicename,
    this.email,
    this.url,
    this.registered,
    this.displayname,
    this.firstname,
    this.lastname,
    this.nickname,
    this.description,
    this.capabilities,
    this.mobile,
    this.gender,
    this.dob,
    this.pgsUserImage,});

  User.fromJson(dynamic json) {
    id = json['id'];
    username = json['username'];
    nicename = json['nicename'];
    email = json['email'];
    url = json['url'];
    registered = json['registered'];
    displayname = json['displayname'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    nickname = json['nickname'];
    description = json['description'];
    capabilities = json['capabilities'] != null ? Capabilities.fromJson(json['capabilities']) : null;
    mobile = json['mobile'];
    gender = json['gender'];
    dob = json['dob'];
    pgsUserImage = json['pgs_user_image'];
  }
  int? id;
  String? username;
  String? nicename;
  String? email;
  String? url;
  String? registered;
  String? displayname;
  String? firstname;
  String? lastname;
  String? nickname;
  String? description;
  Capabilities? capabilities;
  String? mobile;
  String? gender;
  String? dob;
  String? pgsUserImage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['username'] = username;
    map['nicename'] = nicename;
    map['email'] = email;
    map['url'] = url;
    map['registered'] = registered;
    map['displayname'] = displayname;
    map['firstname'] = firstname;
    map['lastname'] = lastname;
    map['nickname'] = nickname;
    map['description'] = description;
    if (capabilities != null) {
      map['capabilities'] = capabilities?.toJson();
    }
    map['mobile'] = mobile;
    map['gender'] = gender;
    map['dob'] = dob;
    map['pgs_user_image'] = pgsUserImage;
    return map;
  }

}

Capabilities capabilitiesFromJson(String str) => Capabilities.fromJson(json.decode(str));
String capabilitiesToJson(Capabilities data) => json.encode(data.toJson());
class Capabilities {
  Capabilities({
    this.customer,});

  Capabilities.fromJson(dynamic json) {
    customer = json['customer'];
  }
  bool? customer;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['customer'] = customer;
    return map;
  }

}