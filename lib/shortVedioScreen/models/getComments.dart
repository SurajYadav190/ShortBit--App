class GetCommentsModel {
  bool? status;
  String? message;
  int? totalData;
  int? totalPages;
  List<Dataa>? data;

  GetCommentsModel(
      {this.status, this.message, this.totalData, this.totalPages, this.data});

  GetCommentsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    totalData = json['total_data'];
    totalPages = json['total_pages'];
    if (json['data'] != null) {
      data = <Dataa>[];
      json['data'].forEach((v) {
        data!.add(new Dataa.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['total_data'] = this.totalData;
    data['total_pages'] = this.totalPages;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Dataa {
  String? sId;
  UserId? userId;
  String? postId;
  String? text;
  bool? status;
  String? createdAt;
  String? updatedAt;

  Dataa(
      {this.sId,
        this.userId,
        this.postId,
        this.text,
        this.status,
        this.createdAt,
        this.updatedAt});

  Dataa.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    userId =
    json['user_id'] != null ? new UserId.fromJson(json['user_id']) : null;
    postId = json['post_id'];
    text = json['text'];
    status = json['status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    if (this.userId != null) {
      data['user_id'] = this.userId!.toJson();
    }
    data['post_id'] = this.postId;
    data['text'] = this.text;
    data['status'] = this.status;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

class UserId {
  String? sId;
  String? name;
  String? profileImage;

  UserId({this.sId, this.name, this.profileImage});

  UserId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    profileImage = json['profile_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['profile_image'] = this.profileImage;
    return data;
  }
}
