class GetProfileModel {
  bool? status;
  String? message;
  Data? data;
  String? count;

  GetProfileModel({this.status, this.message, this.data, this.count});

  GetProfileModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    count = json['count'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['count'] = this.count;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  Location? location;
  String? sId;
  String? name;
  String? email;
  String? phoneNumber;
  String? signupOtp;
  String? signupOtpExpiry;
  String? detailCount;
  String? gender;
  String? dob;
  List<Null>? interest;
  String? profileImage;
  String? avtar;
  String? about_me;
  List<Null>? gallery;
  String? age;
  String? role;
  String? detailStatus;
  String? accountStatus;
  bool? isDeleted;
  String? createdAt;
  String? updatedAt;
  int? iV;
  var followersCount;
  var followingCount;

  Data(
      {this.location,
      this.sId,
      this.name,
      this.email,
      this.phoneNumber,
      this.signupOtp,
      this.signupOtpExpiry,
      this.detailCount,
      this.gender,
      this.dob,
      this.interest,
      this.profileImage,
      this.avtar,
      this.about_me,
      this.gallery,
      this.age,
      this.role,
      this.detailStatus,
      this.accountStatus,
      this.isDeleted,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.followersCount,
      this.followingCount});

  Data.fromJson(Map<String, dynamic> json) {
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    signupOtp = json['signup_otp'];
    signupOtpExpiry = json['signup_otp_expiry'];
    detailCount = json['detail_count'];
    gender = json['gender'];
    dob = json['dob'];
    /*if (json['interest'] != null) {
      interest = <Null>[];
      json['interest'].forEach((v) {
        interest!.add(new Null.fromJson(v));
      });
    }*/
    profileImage = json['profile_image'];
    avtar = json['avtar'];
    about_me = json['about_me'];
    /*if (json['gallery'] != null) {
      gallery = <Null>[];
      json['gallery'].forEach((v) {
        gallery!.add(new Null.fromJson(v));
      });
    }*/
    age = json['age'];
    role = json['role'];
    detailStatus = json['detail_status'];
    accountStatus = json['account_status'];
    isDeleted = json['is_deleted'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    followersCount = json['followers_count'];
    followingCount = json['following_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone_number'] = this.phoneNumber;
    data['signup_otp'] = this.signupOtp;
    data['signup_otp_expiry'] = this.signupOtpExpiry;
    data['detail_count'] = this.detailCount;
    data['gender'] = this.gender;
    data['dob'] = this.dob;
    /*if (this.interest != null) {
      data['interest'] = this.interest!.map((v) => v.toJson()).toList();
    }*/
    data['profile_image'] = this.profileImage;
    data['avtar'] = this.avtar;
    data['about_me'] = this.about_me;
    /* if (this.gallery != null) {
      data['gallery'] = this.gallery!.map((v) => v.toJson()).toList();
    }*/
    data['age'] = this.age;
    data['role'] = this.role;
    data['detail_status'] = this.detailStatus;
    data['account_status'] = this.accountStatus;
    data['is_deleted'] = this.isDeleted;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    data['followers_count'] = this.followersCount;
    data['following_count'] = this.followingCount;
    return data;
  }
}

class Location {
  String? lat;
  String? long;
  String? name;

  Location({this.lat, this.long, this.name});

  Location.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    long = json['long'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['long'] = this.long;
    data['name'] = this.name;
    return data;
  }
}
