class GetReelsModel {
  bool? status;
  String? message;
  int? totalData;
  int? totalPages;
  List<Data>? data;

  GetReelsModel(
      {this.status, this.message, this.totalData, this.totalPages, this.data});

  GetReelsModel.fromJson(Map<String, dynamic> json) {
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
  String? sId;
  PostedBy? postedBy;
  String? title;
  String? videoSrc;
  int? comments;
  int? share;
  int? views;
  bool? isDeleted;
  bool? status;
  String? createdAt;
  String? updatedAt;
  int? iV;
  int? totalLikes;
  bool? isLiked;

  Data(
      {this.sId,
        this.postedBy,
        this.title,
        this.videoSrc,
        this.comments,
        this.share,
        this.views,
        this.isDeleted,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.iV,
        this.totalLikes,
        this.isLiked});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    postedBy = json['posted_by'] != null
        ? new PostedBy.fromJson(json['posted_by'])
        : null;
    title = json['title'];
    videoSrc = json['video_src'];
    comments = json['comments'];
    share = json['share'];
    views = json['views'];
    isDeleted = json['is_deleted'];
    status = json['status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    totalLikes = json['total_likes'];
    isLiked = json['is_liked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    if (this.postedBy != null) {
      data['posted_by'] = this.postedBy!.toJson();
    }
    data['title'] = this.title;
    data['video_src'] = this.videoSrc;
    data['comments'] = this.comments;
    data['share'] = this.share;
    data['views'] = this.views;
    data['is_deleted'] = this.isDeleted;
    data['status'] = this.status;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    data['total_likes'] = this.totalLikes;
    data['is_liked'] = this.isLiked;
    return data;
  }
}

class PostedBy {
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
   String? profileImage;
  Location? location;
   String? age;
  String? role;
  String? detailStatus;
  String? accountStatus;
  int? followersCount;
  int? followingCount;
  bool? isDeleted;
  String? createdAt;
  String? updatedAt;
  int? iV;
  int? balance;
  int? pricePerMin;
  int? level;

  PostedBy(
      {this.sId,
        this.name,
        this.email,
        this.password,
        this.phoneNumber,
        this.signupOtp,
        this.signupOtpExpiry,
        this.detailCount,
        this.gender,
        this.dob,
         this.profileImage,
        this.location,
         this.age,
        this.role,
        this.detailStatus,
        this.accountStatus,
        this.followersCount,
        this.followingCount,
        this.isDeleted,
        this.createdAt,
        this.updatedAt,
        this.iV,
        this.balance,
        this.pricePerMin,
        this.level});

  PostedBy.fromJson(Map<String, dynamic> json) {
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

    profileImage = json['profile_image'];
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;

    age = json['age'];
    role = json['role'];
    detailStatus = json['detail_status'];
    accountStatus = json['account_status'];
    followersCount = json['followers_count'];
    followingCount = json['following_count'];
    isDeleted = json['is_deleted'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    balance = json['balance'];
    pricePerMin = json['price_per_min'];
    level = json['level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
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

    data['profile_image'] = this.profileImage;
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }

    data['age'] = this.age;
    data['role'] = this.role;
    data['detail_status'] = this.detailStatus;
    data['account_status'] = this.accountStatus;
    data['followers_count'] = this.followersCount;
    data['following_count'] = this.followingCount;
    data['is_deleted'] = this.isDeleted;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    data['balance'] = this.balance;
    data['price_per_min'] = this.pricePerMin;
    data['level'] = this.level;
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
