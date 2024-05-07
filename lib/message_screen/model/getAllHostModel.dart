class GetAllHostModel {
  var status;
  var message;
  var totalData;
  var totalPages;
  List<Data>? data;

  GetAllHostModel(
      {this.status, this.message, this.totalData, this.totalPages, this.data});

  GetAllHostModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    totalData = json['total_data'];
    totalPages = json['total_pages'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
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

class Data {
  var sId;
  var name;
  var email;
  var phoneNumber;
  var signupOtp;
  var signupOtpExpiry;
  var detailCount;
  var gender;
  var dob;
  List<String>? interest;
  var profileImage;
  Location? location;
  List<String>? gallery;
  var age;
  var role;
  var detailStatus;
  var accountStatus;
  var followersCount;
  var followingCount;
  var createdAt;
  var agencyCode;
  var balance;
  var isChatBusy;
  var isLiveBusy;
  var level;
  var pricePerMin;
  var language;
  var aboutMe;
  var avtar;
  var height;
  var deviceToken;

  Data(
      {this.sId,
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
      this.location,
      this.gallery,
      this.age,
      this.role,
      this.detailStatus,
      this.accountStatus,
      this.followersCount,
      this.followingCount,
      this.createdAt,
      this.agencyCode,
      this.balance,
      this.isChatBusy,
      this.isLiveBusy,
      this.level,
      this.pricePerMin,
      this.language,
      this.aboutMe,
      this.avtar,
      this.height,
      this.deviceToken});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    signupOtp = json['signup_otp'];
    signupOtpExpiry = json['signup_otp_expiry'];
    detailCount = json['detail_count'];
    gender = json['gender'];
    dob = json['dob'];
    interest = json['interest'].cast<String>();
    profileImage = json['profile_image'];
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    gallery = json['gallery'].cast<String>();
    age = json['age'];
    role = json['role'];
    detailStatus = json['detail_status'];
    accountStatus = json['account_status'];
    followersCount = json['followers_count'];
    followingCount = json['following_count'];
    createdAt = json['createdAt'];
    agencyCode = json['agency_code'];
    balance = json['balance'];
    isChatBusy = json['is_chat_busy'];
    isLiveBusy = json['is_live_busy'];
    level = json['level'];
    pricePerMin = json['price_per_min'];
    language = json['language'];
    aboutMe = json['about_me'];
    avtar = json['avtar'];
    height = json['height'];
    deviceToken = json['device_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone_number'] = this.phoneNumber;
    data['signup_otp'] = this.signupOtp;
    data['signup_otp_expiry'] = this.signupOtpExpiry;
    data['detail_count'] = this.detailCount;
    data['gender'] = this.gender;
    data['dob'] = this.dob;
    data['interest'] = this.interest;
    data['profile_image'] = this.profileImage;
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    data['gallery'] = this.gallery;
    data['age'] = this.age;
    data['role'] = this.role;
    data['detail_status'] = this.detailStatus;
    data['account_status'] = this.accountStatus;
    data['followers_count'] = this.followersCount;
    data['following_count'] = this.followingCount;
    data['createdAt'] = this.createdAt;
    data['agency_code'] = this.agencyCode;
    data['balance'] = this.balance;
    data['is_chat_busy'] = this.isChatBusy;
    data['is_live_busy'] = this.isLiveBusy;
    data['level'] = this.level;
    data['price_per_min'] = this.pricePerMin;
    data['language'] = this.language;
    data['about_me'] = this.aboutMe;
    data['avtar'] = this.avtar;
    data['height'] = this.height;
    data['device_token'] = this.deviceToken;
    return data;
  }
}

class Location {
  var name;
  var lat;
  var long;

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
