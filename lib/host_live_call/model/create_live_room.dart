class CreateLiveRoom {
  var status;
  var message;
  Data? data;

  CreateLiveRoom({this.status, this.message, this.data});

  CreateLiveRoom.fromJson(Map<String, dynamic> json) {
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
  var hostId;
  var endTime;
  List<String>? users;
  int? peakViewCount;
  int? earnedCoins;
  var lastActiveTime;
  var schedulerId;
  var status;
  var sId;
  var startTime;
  var createdAt;
  var updatedAt;
  int? iV;

  Data(
      {this.hostId,
      this.endTime,
      this.users,
      this.peakViewCount,
      this.earnedCoins,
      this.lastActiveTime,
      this.schedulerId,
      this.status,
      this.sId,
      this.startTime,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    hostId = json['host_id'];
    endTime = json['end_time'];
    users = json['users'].cast<String>();
    peakViewCount = json['peak_view_count'];
    earnedCoins = json['earned_coins'];
    lastActiveTime = json['last_active_time'];
    schedulerId = json['scheduler_id'];
    status = json['status'];
    sId = json['_id'];
    startTime = json['start_time'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['host_id'] = this.hostId;
    data['end_time'] = this.endTime;
    data['users'] = this.users;
    data['peak_view_count'] = this.peakViewCount;
    data['earned_coins'] = this.earnedCoins;
    data['last_active_time'] = this.lastActiveTime;
    data['scheduler_id'] = this.schedulerId;
    data['status'] = this.status;
    data['_id'] = this.sId;
    data['start_time'] = this.startTime;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
