// ignore: file_names
import 'dart:convert';

import 'package:funku/ModelClasses/UserRole.dart';
import 'package:funku/ModelClasses/UserToken.dart';
import 'package:funku/ModelClasses/otpResponse.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;

import '../Constants/AppConstants.dart';

class ApiProvider {
//==================================GET OTP Api==========================================//
  Future<OtpResponse> getOTP(String mobile) async {
    Map data = {"mobile": mobile};
    print("Region $data");
    //encode Map to JSON
    var body = json.encode(data);
    var response = await http.post(AppConstants.BASE_URL + AppConstants.GET_OTP,
        headers: {"Content-Type": "application/json"}, body: body);
    OtpResponse otpResponse = OtpResponse.fromJson(jsonDecode(response.body));
    print("${response.statusCode}");
    print("${response.body}");
    return otpResponse;
  }

  //==================================VERIFY OTP Api==========================================//
  Future<UserToken> verfiyOTP(String mobile) async {
    Map data = {"mobile": mobile};

    //encode Map to JSON
    var body = json.encode(data);
    var response = await http.post(
        AppConstants.BASE_URL + AppConstants.VERIFY_OTP,
        headers: {"Content-Type": "application/json"},
        body: body);
    UserToken userToken = UserToken.fromJson(jsonDecode(response.body));
    return userToken;
  }

  //==================================GET ROLES Api==========================================//
  Future<UserRole> getRoles() async {
    //encode Map to JSON
    var response = await http.get(
        AppConstants.BASE_URL + AppConstants.GET_ROLES,
        headers: {"Content-Type": "application/json"});
    UserRole roles = UserRole.fromJson(jsonDecode(response.body));
    return roles;
  }

  //==================================Common Api==========================================//
  Future<void> _requestViaGET() async {
    final response = await http.get(
        AppConstants.BASE_URL + AppConstants.GET_ROLES,
        headers: {"Content-Type": "application/json"});
    final data = json.decode(response.body);

    return data;
  }
}
