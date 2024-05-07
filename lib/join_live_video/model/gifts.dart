class Gifts {
  var status;
  var message;
  List<Gift>? gift;

  Gifts({this.status, this.message, this.gift});

  Gifts.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['gift'] != null) {
      gift = <Gift>[];
      json['gift'].forEach((v) {
        gift!.add(new Gift.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.gift != null) {
      data['gift'] = this.gift!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Gift {
  var icon;
  var sId;
  var value;
  var name;
  var coins;
  var isDeleted;
  var status;
  var createdAt;
  var updatedAt;
  var iV;

  Gift(
      {this.icon,
      this.sId,
      this.value,
      this.coins,
      this.name,
      this.isDeleted,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Gift.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    sId = json['_id'];
    value = json['value'];
    coins = json['coins'];
    name = json['name'];
    isDeleted = json['is_deleted'];
    status = json['status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['_id'] = this.sId;
    data['value'] = this.value;
    data['coins'] = this.coins;
    data['name'] = this.name;
    data['is_deleted'] = this.isDeleted;
    data['status'] = this.status;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
