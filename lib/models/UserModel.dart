class UserModel {
  String userId = "";
  String firstName = "";
  String lastName = "";
  String userName = "";
  String branchId = "";
  String userStatus = "";
  String createdDate = "";
  String carriedCode = "";
  String carriedName = "";
  String modifiedDate = "";
  String modifiedCode = "";
  String modifiedName = "";
  String branchName = "";
  String statusName = "";
  String status = "";
  String branchTypeName = "";
  String provinceName = "";
  String districtName = "";
  String villageName = "";
  String userStatusName = "";
  String branchShort = "";
  String phone = "";
  String userType = "";
  String partnerId = "";
  String partnerName = "";
  String provinceId = "";

  UserModel(
      {userId,
      firstName,
      lastName,
      userName,
      branchId,
      userStatus,
      createdDate,
      carriedCode,
      carriedName,
      modifiedDate,
      modifiedCode,
      modifiedName,
      branchName,
      statusName,
      status,
      branchTypeName,
      provinceName,
      districtName,
      villageName,
      userStatusName,
      branchShort,
      phone,
      userType,
      partnerId,
      partnerName,
      provinceId});

  UserModel.fromJson(Map<String, dynamic> json) {
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
