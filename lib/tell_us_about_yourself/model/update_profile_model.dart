class UpdateProfileModel {
  bool? status;
  String? message;
  Data? data;

  UpdateProfileModel({this.status, this.message, this.data});

  UpdateProfileModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  Location? location;
  var followersCount;
  var followingCount;
  String? sId;
  String? name;
  String? email;
  String? password;
  String? phoneNumber;
  String? signupOtp;
  String? signupOtpExpiry;
  String? detailCount;
  String? gender;
  String? dob;
  List<Null>? interest;
  String? profileImage;
  List<Null>? gallery;
  String? age;
  String? role;
  String? detailStatus;
  String? accountStatus;
  bool? isDeleted;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Data(
      {this.location,
      this.followersCount,
      this.followingCount,
      this.sId,
      this.name,
      this.email,
      this.password,
      this.phoneNumber,
      this.signupOtp,
      this.signupOtpExpiry,
      this.detailCount,
      this.gender,
      this.dob,
      this.interest,
      this.profileImage,
      this.gallery,
      this.age,
      this.role,
      this.detailStatus,
      this.accountStatus,
      this.isDeleted,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    followersCount = json['followers_count'];
    followingCount = json['following_count'];
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    phoneNumber = json['phone_number'];
    signupOtp = json['signup_otp'];
    signupOtpExpiry = json['signup_otp_expiry'];
    detailCount = json['detail_count'];
    gender = json['gender'];
    dob = json['dob'];
    /* if (json['interest'] != null) {
      interest = <Null>[];
      json['interest'].forEach((v) {
        interest!.add(new Null.fromJson(v));
      });
    }*/
    profileImage = json['profile_image'];
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
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    data['followers_count'] = this.followersCount;
    data['following_count'] = this.followingCount;
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
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
    return data;
  }
}

class Location {
  String? name;

  Location({this.name});

  Location.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}
