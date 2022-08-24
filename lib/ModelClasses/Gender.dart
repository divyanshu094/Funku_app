class Result {
  int? id;
  DateTime? createddate;
  DateTime? updateddate;
  String? name;
  String? image;

  Result({this.id, this.createddate, this.updateddate, this.name, this.image});

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createddate = json['created_date'];
    updateddate = json['updated_date'];
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['created_date'] = createddate;
    data['updated_date'] = updateddate;
    data['name'] = name;
    data['image'] = image;
    return data;
  }
}

class Gender {
  bool? status;
  List<Result?>? results;

  Gender({this.status, this.results});

  Gender.fromJson(Map<String, dynamic> json) {
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
