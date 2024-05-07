class GetLiveRoomData {
  var status;
  var message;
  Data? data;

  GetLiveRoomData({this.status, this.message, this.data});

  GetLiveRoomData.fromJson(Map<String, dynamic> json) {
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
  var sId;
  HostId? hostId;
  var endTime;
  List<String>? users;
  var peakViewCount;
  var earnedCoins;
  var schedulerId;
  var status;
  var startTime;
  var lastActiveTime;
  var createdAt;
  var updatedAt;

  Data(
      {this.sId,
      this.hostId,
      this.endTime,
      this.users,
      this.peakViewCount,
      this.earnedCoins,
      this.schedulerId,
      this.status,
      this.startTime,
      this.lastActiveTime,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    hostId =
        json['host_id'] != null ? new HostId.fromJson(json['host_id']) : null;
    endTime = json['end_time'];
    users = json['users'].cast<String>();
    peakViewCount = json['peak_view_count'];
    earnedCoins = json['earned_coins'];
    schedulerId = json['scheduler_id'];
    status = json['status'];
    startTime = json['start_time'];
    lastActiveTime = json['last_active_time'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    if (this.hostId != null) {
      data['host_id'] = this.hostId!.toJson();
    }
    data['end_time'] = this.endTime;
    data['users'] = this.users;
    data['peak_view_count'] = this.peakViewCount;
    data['earned_coins'] = this.earnedCoins;
    data['scheduler_id'] = this.schedulerId;
    data['status'] = this.status;
    data['start_time'] = this.startTime;
    data['last_active_time'] = this.lastActiveTime;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

class HostId {
  var sId;
  var name;
  var language;
  var profileImage;
  var followersCount;
  var level;

  HostId({this.sId, this.name, this.language, this.profileImage, this.level});

  HostId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    language = json['language'];
    profileImage = json['profile_image'];
    followersCount = json['followers_count'];
    level = json['level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['language'] = this.language;
    data['profile_image'] = this.profileImage;
    data['followers_count'] = this.followersCount;
    data['level'] = this.level;
    return data;
  }
}
