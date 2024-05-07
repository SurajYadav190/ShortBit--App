class InterestListModel {
  bool? status;
  String? message;
  int? totalRecords;
  List<Data>? data;


  InterestListModel({this.status,
    this.message,
    this.totalRecords,
    this.data,
  });

  InterestListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    totalRecords = json['total_records'];
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
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? name;
  String? icon;
  bool? status;
  String? createdAt;
  String? updatedAt;
  bool _isSelected = false;


  bool get isSelected => _isSelected;

  set isSelected(bool value) {
    _isSelected = value;
  }

  Data({this.sId,
    this.name,
    this.icon,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    icon = json['icon'];
    status = json['status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['icon'] = this.icon;
    data['status'] = this.status;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
