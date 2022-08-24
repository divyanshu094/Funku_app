import 'package:flutter/material.dart';

class AppConstants {
  static const String BASE_URL = "http://45.79.117.182:8080"; //Prod Url

  static const String GET_OTP = "/api/account/send_otp/";
  static const String VERIFY_OTP = "/api/account/verify/";
  static const String GET_ROLES = "/api/account/role/";
  static const String USER_PROFILE = "/api/account/role/";
  static const String USER_PROFILE_IMAGE = "/api/account/profile_image/";
  static const String USER_PROFILE_DETAIL = "/api/account/profile_detail/";
  static const String UPDATE_USER_PROFILE_DETAIL = "/api/account/update_profile_detail/";
  static const String USER_MUSIC_TYPE = "/api/account/user_music_type/";
  static const String USER_DRINK_TYPE = "/api/account/user_drink_type/";
  static const String USER_BAR_TYPE = "/api/account/user_bar_type/";


  static const String GET_AVATARS = "/api/master/avatar_profile/";
  static const String GET_GENDERS = "/api/master/gender/";
  static const String GET_MUSIC_TYPES = "/api/master/music_type/";
  static const String GET_BAR_TYPES = "/api/master/bar_type/";
}
