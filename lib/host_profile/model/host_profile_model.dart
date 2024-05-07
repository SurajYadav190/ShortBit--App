class HostProfileModel {
  bool? status;
  String? message;
  Data? data;

  HostProfileModel({this.status, this.message, this.data});

  HostProfileModel.fromJson(Map<String, dynamic> json) {
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
  String? sId;
  String? name;
  String? email;
  String? phoneNumber;
  String? otp;
  String? otpExpiry;
  String? detailCount;
  String? gender;
  String? dob;
  List<Interest>? interest;
  String? height;
  String? language;
  String? profileImage;
  String? avtar;
  Location? location;
  String? userName;
  String? aboutMe;
  List<Null>? gallery;
  String? age;
  String? detailStatus;
  String? accountStatus;
  int? followersCount;
  int? followingCount;
  int? balance;
  String? role;
  int? level;
  int? pricePerMin;
  bool? isLiveBusy;
  bool? isChatBusy;
  String? createdAt;
  String? updatedAt;
  String? agencyCode;

  Data(
      {this.sId,
        this.name,
        this.email,
        this.phoneNumber,
        this.otp,
        this.otpExpiry,
        this.detailCount,
        this.gender,
        this.dob,
        this.interest,
        this.height,
        this.language,
        this.profileImage,
        this.avtar,
        this.location,
        this.userName,
        this.aboutMe,
        this.gallery,
        this.age,
        this.detailStatus,
        this.accountStatus,
        this.followersCount,
        this.followingCount,
        this.balance,
        this.role,
        this.level,
        this.pricePerMin,
        this.isLiveBusy,
        this.isChatBusy,
        this.createdAt,
        this.updatedAt,
        this.agencyCode});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    otp = json['otp'];
    otpExpiry = json['otp_expiry'];
    detailCount = json['detail_count'];
    gender = json['gender'];
    dob = json['dob'];
    if (json['interest'] != null) {
      interest = <Interest>[];
      json['interest'].forEach((v) {
        interest!.add(new Interest.fromJson(v));
      });
    }
    height = json['height'];
    language = json['language'];
    profileImage = json['profile_image'];
    avtar = json['avtar'];
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    userName = json['user_name'];
    aboutMe = json['about_me'];
    if (json['gallery'] != null) {
      gallery = <Null>[];
      json['gallery'].forEach((v) {
      /*  gallery!.add(new Null.fromJson(v));*/
      });
    }
    age = json['age'];
    detailStatus = json['detail_status'];
    accountStatus = json['account_status'];
    followersCount = json['followers_count'];
    followingCount = json['following_count'];
    balance = json['balance'];
    role = json['role'];
    level = json['level'];
    pricePerMin = json['price_per_min'];
    isLiveBusy = json['is_live_busy'];
    isChatBusy = json['is_chat_busy'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    agencyCode = json['agency_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone_number'] = this.phoneNumber;
    data['otp'] = this.otp;
    data['otp_expiry'] = this.otpExpiry;
    data['detail_count'] = this.detailCount;
    data['gender'] = this.gender;
    data['dob'] = this.dob;
    if (this.interest != null) {
      data['interest'] = this.interest!.map((v) => v.toJson()).toList();
    }
    data['height'] = this.height;
    data['language'] = this.language;
    data['profile_image'] = this.profileImage;
    data['avtar'] = this.avtar;
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    data['user_name'] = this.userName;
    data['about_me'] = this.aboutMe;
    if (this.gallery != null) {
      /*data['gallery'] = this.gallery!.map((v) => v.toJson()).toList();*/
    }
    data['age'] = this.age;
    data['detail_status'] = this.detailStatus;
    data['account_status'] = this.accountStatus;
    data['followers_count'] = this.followersCount;
    data['following_count'] = this.followingCount;
    data['balance'] = this.balance;
    data['role'] = this.role;
    data['level'] = this.level;
    data['price_per_min'] = this.pricePerMin;
    data['is_live_busy'] = this.isLiveBusy;
    data['is_chat_busy'] = this.isChatBusy;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['agency_code'] = this.agencyCode;
    return data;
  }
}

class Interest {
  String? sId;
  String? name;
  String? icon;
  bool? isDeleted;
  bool? status;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Interest(
      {this.sId,
        this.name,
        this.icon,
        this.isDeleted,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.iV});

  Interest.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    icon = json['icon'];
    isDeleted = json['is_deleted'];
    status = json['status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['icon'] = this.icon;
    data['is_deleted'] = this.isDeleted;
    data['status'] = this.status;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class Location {
  String? name;
  String? lat;
  String? long;

  Location({this.name, this.lat, this.long});

  Location.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    lat = json['lat'];
    long = json['long'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['lat'] = this.lat;
    data['long'] = this.long;
    return data;
  }
}
