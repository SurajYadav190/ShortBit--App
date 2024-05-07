class SignUpModel {
  bool? status;
  String? message;
  Data? data;

  SignUpModel({this.status, this.message, this.data});

  SignUpModel.fromJson(Map<String, dynamic> json) {
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
  String? phone;
  String? otpExpiry;

  Data({this.phone, this.otpExpiry});

  Data.fromJson(Map<String, dynamic> json) {
    phone = json['phone'];
    otpExpiry = json['otpExpiry'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phone'] = this.phone;
    data['otpExpiry'] = this.otpExpiry;
    return data;
  }
}
