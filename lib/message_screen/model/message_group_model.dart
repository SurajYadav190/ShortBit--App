class MessageGroup {
  var status;
  var message;
  var totalRecords;
  var totalPages;
  List<Data>? data;

  MessageGroup(
      {this.status,
      this.message,
      this.totalRecords,
      this.totalPages,
      this.data});

  MessageGroup.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    totalRecords = json['total_records'];
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
    data['total_records'] = this.totalRecords;
    data['total_pages'] = this.totalPages;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  var sId;
  FromId? fromId;
  ToId? toId;
  var groupId;
  var status;
  var createdAt;
  var updatedAt;

  Data(
      {this.sId,
      this.fromId,
      this.toId,
      this.groupId,
      this.status,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    fromId =
        json['from_id'] != null ? new FromId.fromJson(json['from_id']) : null;
    toId = json['to_id'] != null ? new ToId.fromJson(json['to_id']) : null;
    groupId = json['group_id'];
    status = json['status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    if (this.fromId != null) {
      data['from_id'] = this.fromId!.toJson();
    }
    if (this.toId != null) {
      data['to_id'] = this.toId!.toJson();
    }
    data['group_id'] = this.groupId;
    data['status'] = this.status;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

class FromId {
  var sId;
  var name;
  var email;
  var phoneNumber;
  var deviceToken;
  var detailCount;
  var gender;
  var dob;
  var height;
  var language;
  var profileImage;
  var avtar;
  var userName;
  var aboutMe;
  List<String>? gallery;
  var age;
  var detailStatus;
  var accountStatus;
  var followersCount;
  var followingCount;
  var balance;
  var role;
  var level;
  var pricePerMin;
  var isLiveBusy;
  var isChatBusy;
  var createdAt;
  var updatedAt;
  var liveRoomId;
  var serviceStatus;
  var commission;
  var isVoiceBusy;
  var voiceRoomId;

  FromId(
      {this.sId,
      this.name,
      this.email,
      this.phoneNumber,
      this.deviceToken,
      this.detailCount,
      this.gender,
      this.dob,
      this.height,
      this.language,
      this.profileImage,
      this.avtar,
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
      this.liveRoomId,
      this.serviceStatus,
      this.commission,
      this.isVoiceBusy,
      this.voiceRoomId});

  FromId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    deviceToken = json['device_token'];
    detailCount = json['detail_count'];
    gender = json['gender'];
    dob = json['dob'];
    height = json['height'];
    language = json['language'];
    profileImage = json['profile_image'];
    avtar = json['avtar'];
    userName = json['user_name'];
    aboutMe = json['about_me'];
    gallery = json['gallery'].cast<String>();
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
    liveRoomId = json['live_room_id'];
    serviceStatus = json['service_status'];
    commission = json['commission'];
    isVoiceBusy = json['is_voice_busy'];
    voiceRoomId = json['voice_room_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone_number'] = this.phoneNumber;
    data['device_token'] = this.deviceToken;
    data['detail_count'] = this.detailCount;
    data['gender'] = this.gender;
    data['dob'] = this.dob;
    data['height'] = this.height;
    data['language'] = this.language;
    data['profile_image'] = this.profileImage;
    data['avtar'] = this.avtar;
    data['user_name'] = this.userName;
    data['about_me'] = this.aboutMe;
    data['gallery'] = this.gallery;
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
    data['live_room_id'] = this.liveRoomId;
    data['service_status'] = this.serviceStatus;
    data['commission'] = this.commission;
    data['is_voice_busy'] = this.isVoiceBusy;
    data['voice_room_id'] = this.voiceRoomId;
    return data;
  }
}

class ToId {
  var sId;
  var name;
  var email;
  var phoneNumber;
  var detailCount;
  var gender;
  var dob;
  var height;
  var language;
  var profileImage;
  var avtar;
  var userName;
  var aboutMe;
  List<String>? gallery;
  var age;
  var detailStatus;
  var accountStatus;
  var followersCount;
  var followingCount;
  var balance;
  var role;
  var level;
  var pricePerMin;
  var isLiveBusy;
  var isChatBusy;
  var createdAt;
  var updatedAt;
  var agencyCode;
  var deviceToken;
  var liveRoomId;
  var serviceStatus;
  var commission;
  var isVoiceBusy;
  var voiceRoomId;

  ToId(
      {this.sId,
      this.name,
      this.email,
      this.phoneNumber,
      this.detailCount,
      this.gender,
      this.dob,
      this.height,
      this.language,
      this.profileImage,
      this.avtar,
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
      this.agencyCode,
      this.deviceToken,
      this.liveRoomId,
      this.serviceStatus,
      this.commission,
      this.isVoiceBusy,
      this.voiceRoomId});

  ToId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    detailCount = json['detail_count'];
    gender = json['gender'];
    dob = json['dob'];
    height = json['height'];
    language = json['language'];
    profileImage = json['profile_image'];
    avtar = json['avtar'];
    userName = json['user_name'];
    aboutMe = json['about_me'];
    gallery = json['gallery'].cast<String>();
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
    deviceToken = json['device_token'];
    liveRoomId = json['live_room_id'];
    serviceStatus = json['service_status'];
    commission = json['commission'];
    isVoiceBusy = json['is_voice_busy'];
    voiceRoomId = json['voice_room_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone_number'] = this.phoneNumber;
    data['detail_count'] = this.detailCount;
    data['gender'] = this.gender;
    data['dob'] = this.dob;
    data['height'] = this.height;
    data['language'] = this.language;
    data['profile_image'] = this.profileImage;
    data['avtar'] = this.avtar;
    data['user_name'] = this.userName;
    data['about_me'] = this.aboutMe;
    data['gallery'] = this.gallery;
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
    data['device_token'] = this.deviceToken;
    data['live_room_id'] = this.liveRoomId;
    data['service_status'] = this.serviceStatus;
    data['commission'] = this.commission;
    data['is_voice_busy'] = this.isVoiceBusy;
    data['voice_room_id'] = this.voiceRoomId;
    return data;
  }
}
