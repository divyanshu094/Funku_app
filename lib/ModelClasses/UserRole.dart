class UserRole {
  bool? status;
  List<Result?>? results;

  UserRole({this.status, this.results});

  UserRole.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['results'] != null) {
      results = <Result>[];
      json['results'].forEach((v) {
        results!.add(Result.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = status;
    data['results'] =
        results != null ? results!.map((v) => v?.toJson()).toList() : null;
    return data;
  }
}

class Result {
  int? id;
  String? name;

  Result({this.id, this.name});

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
