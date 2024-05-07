class WalletModel {
  bool? status;
  String? message;
  Data? data;

  WalletModel({this.status, this.message, this.data});

  WalletModel.fromJson(Map<String, dynamic> json) {
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
  int? balance;
  List<UserTransactions>? userTransactions;

  Data({this.balance, this.userTransactions});

  Data.fromJson(Map<String, dynamic> json) {
    balance = json['balance'];
    if (json['userTransactions'] != null) {
      userTransactions = <UserTransactions>[];
      json['userTransactions'].forEach((v) {
        userTransactions!.add(new UserTransactions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['balance'] = this.balance;
    if (this.userTransactions != null) {
      data['userTransactions'] =
          this.userTransactions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class UserTransactions {
  String? sId;
  ToUserId? toUserId;
  String? transactionType;
  int? amount;
  String? createdAt;

  UserTransactions(
      {this.sId,
        this.toUserId,
        this.transactionType,
        this.amount,
        this.createdAt});

  UserTransactions.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    toUserId = json['to_user_id'] != null
        ? new ToUserId.fromJson(json['to_user_id'])
        : null;
    transactionType = json['transaction_type'];
    amount = json['amount'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    if (this.toUserId != null) {
      data['to_user_id'] = this.toUserId!.toJson();
    }
    data['transaction_type'] = this.transactionType;
    data['amount'] = this.amount;
    data['createdAt'] = this.createdAt;
    return data;
  }
}

class ToUserId {
  String? sId;
  String? name;
  String? profileImage;

  ToUserId({this.sId, this.name, this.profileImage});

  ToUserId.fromJson(Map<String, dynamic> json) {
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
