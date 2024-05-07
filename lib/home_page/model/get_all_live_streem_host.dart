class GetAllLiveStreemHost {
  var status;
  var message;
  var totalData;
  var totalPages;
  List<Data>? data;

  GetAllLiveStreemHost(
      {this.status, this.message, this.totalData, this.totalPages, this.data});

  GetAllLiveStreemHost.fromJson(Map<String, dynamic> json) {
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
  HostId? hostId;
  var endTime;
  List<String>? users;
  var peakViewCount;
  var lastActiveTime;
  var schedulerId;
  var status;
  var startTime;
  var createdAt;
  var updatedAt;
  var earnedCoins;
  var level;
  var language;

  Data(
      {this.sId,
      this.hostId,
      this.endTime,
      this.users,
      this.peakViewCount,
      this.lastActiveTime,
      this.schedulerId,
      this.status,
      this.startTime,
      this.createdAt,
      this.updatedAt,
      this.earnedCoins,
      this.level,
      this.language});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    hostId =
        json['host_id'] != null ? new HostId.fromJson(json['host_id']) : null;
    endTime = json['end_time'];
    users = json['users'].cast<String>();
    peakViewCount = json['peak_view_count'];
    lastActiveTime = json['last_active_time'];
    schedulerId = json['scheduler_id'];
    status = json['status'];
    startTime = json['start_time'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    earnedCoins = json['earned_coins'];
    level = json['level'];
    language = json['language'];
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
    data['last_active_time'] = this.lastActiveTime;
    data['scheduler_id'] = this.schedulerId;
    data['status'] = this.status;
    data['start_time'] = this.startTime;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['earned_coins'] = this.earnedCoins;
    data['level'] = this.level;
    data['language'] = this.language;
    return data;
  }
}

class HostId {
  var sId;
  var name;
  var profileImage;

  HostId({this.sId, this.name, this.profileImage});

  HostId.fromJson(Map<String, dynamic> json) {
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
