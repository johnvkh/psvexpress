class loginModel {
  String? responseCode;
  String? responseDescription;
  bool? status;
  List<UserLogin>? listUser;

  loginModel(
      {this.responseCode, this.responseDescription, this.status, this.listUser});

  loginModel.fromJson(Map<String, dynamic> json) {
    responseCode = json['response_code'];
    responseDescription = json['response_description'];
    status = json['status'];
    if (json['list'] != null) {
      listUser = <UserLogin>[];
      json['list'].forEach((v) {
        listUser!.add(new UserLogin.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['response_code'] = this.responseCode;
    data['response_description'] = this.responseDescription;
    data['status'] = this.status;
    if (this.listUser != null) {
      data['list'] = listUser!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class UserLogin {
  String? userId;
  String? firstName;
  String? lastName;
  String? userName;
  String? branchId;
  String? userStatus;
  String? createdDate;
  String? carriedCode;
  String? carriedName;
  String? modifiedDate;
  String? modifiedCode;
  String? modifiedName;
  String? branchName;
  String? statusName;
  String? status;
  String? branchTypeName;
  String? provinceName;
  String? districtName;
  String? villageName;
  String? userStatusName;
  String? branchShort;
  String? phone;
  String? userType;
  String? partnerId;
  String? partnerName;
  String? provinceId;

  UserLogin(
      {this.userId,
        this.firstName,
        this.lastName,
        this.userName,
        this.branchId,
        this.userStatus,
        this.createdDate,
        this.carriedCode,
        this.carriedName,
        this.modifiedDate,
        this.modifiedCode,
        this.modifiedName,
        this.branchName,
        this.statusName,
        this.status,
        this.branchTypeName,
        this.provinceName,
        this.districtName,
        this.villageName,
        this.userStatusName,
        this.branchShort,
        this.phone,
        this.userType,
        this.partnerId,
        this.partnerName,
        this.provinceId});

  UserLogin.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    userName = json['user_name'];
    branchId = json['branch_id'];
    userStatus = json['user_status'];
    createdDate = json['created_date'];
    carriedCode = json['carried_code'];
    carriedName = json['carried_name'];
    modifiedDate = json['modified_date'];
    modifiedCode = json['modified_code'];
    modifiedName = json['modified_name'];
    branchName = json['branch_name'];
    statusName = json['status_name'];
    status = json['status'];
    branchTypeName = json['branch_type_name'];
    provinceName = json['province_name'];
    districtName = json['district_name'];
    villageName = json['village_name'];
    userStatusName = json['user_status_name'];
    branchShort = json['branch_short'];
    phone = json['phone'];
    userType = json['user_type'];
    partnerId = json['partner_id'];
    partnerName = json['partner_name'];
    provinceId = json['province_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['user_name'] = this.userName;
    data['branch_id'] = this.branchId;
    data['user_status'] = this.userStatus;
    data['created_date'] = this.createdDate;
    data['carried_code'] = this.carriedCode;
    data['carried_name'] = this.carriedName;
    data['modified_date'] = this.modifiedDate;
    data['modified_code'] = this.modifiedCode;
    data['modified_name'] = this.modifiedName;
    data['branch_name'] = this.branchName;
    data['status_name'] = this.statusName;
    data['status'] = this.status;
    data['branch_type_name'] = this.branchTypeName;
    data['province_name'] = this.provinceName;
    data['district_name'] = this.districtName;
    data['village_name'] = this.villageName;
    data['user_status_name'] = this.userStatusName;
    data['branch_short'] = this.branchShort;
    data['phone'] = this.phone;
    data['user_type'] = this.userType;
    data['partner_id'] = this.partnerId;
    data['partner_name'] = this.partnerName;
    data['province_id'] = this.provinceId;
    return data;
  }
}
