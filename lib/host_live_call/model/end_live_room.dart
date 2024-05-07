class EndLiveRoom {
  var status;
  var message;
  Data? data;

  EndLiveRoom({this.status, this.message, this.data});

  EndLiveRoom.fromJson(Map<String, dynamic> json) {
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
  var hostId;
  var endTime;
  List<String>? users;
  var peakViewCount;
  var earnedCoins;
  var lastActiveTime;
  var schedulerId;
  var status;
  var startTime;
  var createdAt;
  var updatedAt;
  var iV;

  Data(
      {this.sId,
      this.hostId,
      this.endTime,
      this.users,
      this.peakViewCount,
      this.earnedCoins,
      this.lastActiveTime,
      this.schedulerId,
      this.status,
      this.startTime,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    hostId = json['host_id'];
    endTime = json['end_time'];
    users = json['users'].cast<String>();
    peakViewCount = json['peak_view_count'];
    earnedCoins = json['earned_coins'];
    lastActiveTime = json['last_active_time'];
    schedulerId = json['scheduler_id'];
    status = json['status'];
    startTime = json['start_time'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['host_id'] = this.hostId;
    data['end_time'] = this.endTime;
    data['users'] = this.users;
    data['peak_view_count'] = this.peakViewCount;
    data['earned_coins'] = this.earnedCoins;
    data['last_active_time'] = this.lastActiveTime;
    data['scheduler_id'] = this.schedulerId;
    data['status'] = this.status;
    data['start_time'] = this.startTime;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
