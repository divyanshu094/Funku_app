class OtpResponse {
  bool? status;
  String? message;
  String? sessionid;

  OtpResponse({this.status, this.message, this.sessionid});

  OtpResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    sessionid = json['session_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = status;
    data['message'] = message;
    data['session_id'] = sessionid;
    return data;
  }
}
