class UserModel {
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

//<editor-fold desc="Data Methods">

  UserModel({
    this.userId,
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
    this.provinceId,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserModel &&
          runtimeType == other.runtimeType &&
          userId == other.userId &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          userName == other.userName &&
          branchId == other.branchId &&
          userStatus == other.userStatus &&
          createdDate == other.createdDate &&
          carriedCode == other.carriedCode &&
          carriedName == other.carriedName &&
          modifiedDate == other.modifiedDate &&
          modifiedCode == other.modifiedCode &&
          modifiedName == other.modifiedName &&
          branchName == other.branchName &&
          statusName == other.statusName &&
          status == other.status &&
          branchTypeName == other.branchTypeName &&
          provinceName == other.provinceName &&
          districtName == other.districtName &&
          villageName == other.villageName &&
          userStatusName == other.userStatusName &&
          branchShort == other.branchShort &&
          phone == other.phone &&
          userType == other.userType &&
          partnerId == other.partnerId &&
          partnerName == other.partnerName &&
          provinceId == other.provinceId);

  @override
  int get hashCode =>
      userId.hashCode ^
      firstName.hashCode ^
      lastName.hashCode ^
      userName.hashCode ^
      branchId.hashCode ^
      userStatus.hashCode ^
      createdDate.hashCode ^
      carriedCode.hashCode ^
      carriedName.hashCode ^
      modifiedDate.hashCode ^
      modifiedCode.hashCode ^
      modifiedName.hashCode ^
      branchName.hashCode ^
      statusName.hashCode ^
      status.hashCode ^
      branchTypeName.hashCode ^
      provinceName.hashCode ^
      districtName.hashCode ^
      villageName.hashCode ^
      userStatusName.hashCode ^
      branchShort.hashCode ^
      phone.hashCode ^
      userType.hashCode ^
      partnerId.hashCode ^
      partnerName.hashCode ^
      provinceId.hashCode;

  @override
  String toString() {
    return 'UserModel{' +
        ' userId: $userId,' +
        ' firstName: $firstName,' +
        ' lastName: $lastName,' +
        ' userName: $userName,' +
        ' branchId: $branchId,' +
        ' userStatus: $userStatus,' +
        ' createdDate: $createdDate,' +
        ' carriedCode: $carriedCode,' +
        ' carriedName: $carriedName,' +
        ' modifiedDate: $modifiedDate,' +
        ' modifiedCode: $modifiedCode,' +
        ' modifiedName: $modifiedName,' +
        ' branchName: $branchName,' +
        ' statusName: $statusName,' +
        ' status: $status,' +
        ' branchTypeName: $branchTypeName,' +
        ' provinceName: $provinceName,' +
        ' districtName: $districtName,' +
        ' villageName: $villageName,' +
        ' userStatusName: $userStatusName,' +
        ' branchShort: $branchShort,' +
        ' phone: $phone,' +
        ' userType: $userType,' +
        ' partnerId: $partnerId,' +
        ' partnerName: $partnerName,' +
        ' provinceId: $provinceId,' +
        '}';
  }

  UserModel copyWith({
    String? userId,
    String? firstName,
    String? lastName,
    String? userName,
    String? branchId,
    String? userStatus,
    String? createdDate,
    String? carriedCode,
    String? carriedName,
    String? modifiedDate,
    String? modifiedCode,
    String? modifiedName,
    String? branchName,
    String? statusName,
    String? status,
    String? branchTypeName,
    String? provinceName,
    String? districtName,
    String? villageName,
    String? userStatusName,
    String? branchShort,
    String? phone,
    String? userType,
    String? partnerId,
    String? partnerName,
    String? provinceId,
  }) {
    return UserModel(
      userId: userId ?? this.userId,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      userName: userName ?? this.userName,
      branchId: branchId ?? this.branchId,
      userStatus: userStatus ?? this.userStatus,
      createdDate: createdDate ?? this.createdDate,
      carriedCode: carriedCode ?? this.carriedCode,
      carriedName: carriedName ?? this.carriedName,
      modifiedDate: modifiedDate ?? this.modifiedDate,
      modifiedCode: modifiedCode ?? this.modifiedCode,
      modifiedName: modifiedName ?? this.modifiedName,
      branchName: branchName ?? this.branchName,
      statusName: statusName ?? this.statusName,
      status: status ?? this.status,
      branchTypeName: branchTypeName ?? this.branchTypeName,
      provinceName: provinceName ?? this.provinceName,
      districtName: districtName ?? this.districtName,
      villageName: villageName ?? this.villageName,
      userStatusName: userStatusName ?? this.userStatusName,
      branchShort: branchShort ?? this.branchShort,
      phone: phone ?? this.phone,
      userType: userType ?? this.userType,
      partnerId: partnerId ?? this.partnerId,
      partnerName: partnerName ?? this.partnerName,
      provinceId: provinceId ?? this.provinceId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': this.userId,
      'firstName': this.firstName,
      'lastName': this.lastName,
      'userName': this.userName,
      'branchId': this.branchId,
      'userStatus': this.userStatus,
      'createdDate': this.createdDate,
      'carriedCode': this.carriedCode,
      'carriedName': this.carriedName,
      'modifiedDate': this.modifiedDate,
      'modifiedCode': this.modifiedCode,
      'modifiedName': this.modifiedName,
      'branchName': this.branchName,
      'statusName': this.statusName,
      'status': this.status,
      'branchTypeName': this.branchTypeName,
      'provinceName': this.provinceName,
      'districtName': this.districtName,
      'villageName': this.villageName,
      'userStatusName': this.userStatusName,
      'branchShort': this.branchShort,
      'phone': this.phone,
      'userType': this.userType,
      'partnerId': this.partnerId,
      'partnerName': this.partnerName,
      'provinceId': this.provinceId,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      userId: map['userId'] as String,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      userName: map['userName'] as String,
      branchId: map['branchId'] as String,
      userStatus: map['userStatus'] as String,
      createdDate: map['createdDate'] as String,
      carriedCode: map['carriedCode'] as String,
      carriedName: map['carriedName'] as String,
      modifiedDate: map['modifiedDate'] as String,
      modifiedCode: map['modifiedCode'] as String,
      modifiedName: map['modifiedName'] as String,
      branchName: map['branchName'] as String,
      statusName: map['statusName'] as String,
      status: map['status'] as String,
      branchTypeName: map['branchTypeName'] as String,
      provinceName: map['provinceName'] as String,
      districtName: map['districtName'] as String,
      villageName: map['villageName'] as String,
      userStatusName: map['userStatusName'] as String,
      branchShort: map['branchShort'] as String,
      phone: map['phone'] as String,
      userType: map['userType'] as String,
      partnerId: map['partnerId'] as String,
      partnerName: map['partnerName'] as String,
      provinceId: map['provinceId'] as String,
    );
  }

//</editor-fold>
}
