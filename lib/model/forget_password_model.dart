import 'dart:convert';
ForgetPasswordModel forgetPasswordModelFromJson(String str) => ForgetPasswordModel.fromJson(json.decode(str));
String forgetPasswordModelToJson(ForgetPasswordModel data) => json.encode(data.toJson());
class ForgetPasswordModel {
  ForgetPasswordModel({
      this.status, 
      this.message, 
      this.key,});

  ForgetPasswordModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    key = json['key'];
  }
  String? status;
  String? message;
  String? key;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    map['key'] = key;
    return map;
  }

}