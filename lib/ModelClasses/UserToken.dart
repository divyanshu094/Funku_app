class UserToken {
  bool? status;
  String? message;
  Results? results;

  UserToken({this.status, this.message, this.results});

  UserToken.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    results =
        json['results'] != null ? Results?.fromJson(json['results']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = status;
    data['message'] = message;
    data['results'] = results!.toJson();
    return data;
  }
}

class Results {
  String? token;
  int? pagecount;

  Results({this.token, this.pagecount});

  Results.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    pagecount = json['page_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['token'] = token;
    data['page_count'] = pagecount;
    return data;
  }
}
