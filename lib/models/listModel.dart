import 'dart:convert';


//List employemodelFromJson(String str) => Employemodel.fromJson(json.decode(str)) as List;

//String employemodelToJson(Employemodel data) => json.encode(data.toJson());


List<Employemodel> employemodelFromJson(String str) => List<Employemodel>.from(json.decode(str).map((x) => Employemodel.fromJson(x)));

String employemodelToJson(List<Employemodel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Employemodel {
  Employemodel({
    this.response,
    this.result,
    this.showMessage,
    this.status,
  });

  Response? response;
  String? result;
  bool? showMessage;
  int? status;

  factory Employemodel.fromJson(Map<String, dynamic> json) => Employemodel(
    response: Response.fromJson(json["response"]),
    result: json["result"],
    showMessage: json["show_message"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "response": response?.toJson(),
    "result": result,
    "show_message": showMessage,
    "status": status,
  };
}

class Response {
  Response({
    this.message,
    this.details,
  });

  String? message;
  List<Detail>? details;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
    message: json["message"],
    details: List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "details": List<dynamic>.from(details!.map((x) => x.toJson())),
  };
}

class Detail {
  Detail({
    this.id,
    this.jobTypes,
    this.workingDays,
    this.skills,
    this.employer,
    this.staff,
    this.jobCode,
    this.activationStatus,
    this.title,
    this.titleAlt,
    this.description,
    this.lastDateToApply,
    this.locationOption,
    this.jobTag,
    this.noOfVaccancies,
    this.postedOn,
    this.postedAt,
    this.minSalary,
    this.maxSalary,
    this.salaryCycle,
    this.timingFrom,
    this.timingTo,
    this.status,
    this.url,
    this.experienceRequired,
    this.experienceFrom,
    this.experienceTo,
    this.experienceType,
    this.startDate,
    //this.joiningTime,
    this.appliedCount,
    this.shortlistedCount,
    this.acceptedCount,
    this.rejectedCount,
    this.salaryNegotiable,
    this.reasonRejected,
    this.reasonUncleared,
    this.reasonDeactivated,
    this.reasonChecksRejected,
    this.reasonChecksDeactivated,
    this.reasonChecksUncleared,
    this.createdAt,
    this.updatedAt,
    this.jobLocation,
    this.district,
    this.jobCategory,
  });

  int? id;
  List<String>? jobTypes;
  List<String>? workingDays;
  List<String>? skills;
  Employer? employer;
  Staff? staff;
  String? jobCode;
  String? activationStatus;
  String? title;
  String? titleAlt;
  String? description;
  DateTime? lastDateToApply;
  String? locationOption;
  String? jobTag;
  int? noOfVaccancies;
  DateTime? postedOn;
  int? postedAt;
  int? minSalary;
  int? maxSalary;
  String? salaryCycle;
  String? timingFrom;
  String? timingTo;
  bool? status;
  String? url;
  bool? experienceRequired;
  int? experienceFrom;
  int? experienceTo;
  String? experienceType;
  DateTime? startDate;
  //DateTime? joiningTime;
  int? appliedCount;
  int? shortlistedCount;
  int? acceptedCount;
  int? rejectedCount;
  bool? salaryNegotiable;
  dynamic reasonRejected;
  dynamic reasonUncleared;
  dynamic reasonDeactivated;
  dynamic reasonChecksRejected;
  dynamic reasonChecksDeactivated;
  dynamic reasonChecksUncleared;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? jobLocation;
  String? district;
  String? jobCategory;

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
    id: json["id"],
    jobTypes: List<String>.from(json["jobTypes"].map((x) => x)),
    workingDays: List<String>.from(json["workingDays"].map((x) => x)),
    skills: List<String>.from(json["skills"].map((x) => x)),
    employer: Employer.fromJson(json["employer"]),
    staff: Staff.fromJson(json["staff"]),
    jobCode: json["jobCode"],
    activationStatus: json["activation_status"],
    title: json["title"],
    titleAlt: json["title_alt"],
    description: json["description"],
    lastDateToApply: DateTime.parse(json["lastDateToApply"]),
    locationOption: json["locationOption"],
    jobTag: json["jobTag"],
    noOfVaccancies: json["noOfVaccancies"],
    postedOn: DateTime.parse(json["postedOn"]),
    postedAt: json["postedAt"],
    minSalary: json["minSalary"],
    maxSalary: json["maxSalary"],
    salaryCycle: json["salary_cycle"],
    timingFrom: json["timingFrom"],
    timingTo: json["timingTo"],
    status: json["status"],
    url: json["url"],
    experienceRequired: json["experienceRequired"],
    experienceFrom: json["experienceFrom"],
    experienceTo: json["experienceTo"],
    experienceType: json["experienceType"],
    startDate: DateTime.parse(json["startDate"]),
    //joiningTime: DateTime.parse(json["joiningTime"]),
    appliedCount: json["appliedCount"],
    shortlistedCount: json["shortlistedCount"],
    acceptedCount: json["acceptedCount"],
    rejectedCount: json["rejectedCount"],
    salaryNegotiable: json["salaryNegotiable"],
    reasonRejected: json["reason_rejected"],
    reasonUncleared: json["reason_uncleared"],
    reasonDeactivated: json["reason_deactivated"],
    reasonChecksRejected: json["reason_checks_rejected"],
    reasonChecksDeactivated: json["reason_checks_deactivated"],
    reasonChecksUncleared: json["reason_checks_uncleared"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    jobLocation: json["jobLocation"],
    district: json["district"],
    jobCategory: json["jobCategory"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "jobTypes": List<dynamic>.from(jobTypes!.map((x) => x)),
    "workingDays": List<dynamic>.from(workingDays!.map((x) => x)),
    "skills": List<dynamic>.from(skills!.map((x) => x)),
    "employer": employer!.toJson(),
    "staff": staff!.toJson(),
    "jobCode": jobCode,
    "activation_status": activationStatus,
    "title": title,
    "title_alt": titleAlt,
    "description": description,
    "lastDateToApply": "${lastDateToApply!.year.toString().padLeft(4, '0')}-${lastDateToApply!.month.toString().padLeft(2, '0')}-${lastDateToApply!.day.toString().padLeft(2, '0')}",
    "locationOption": locationOption,
    "jobTag": jobTag,
    "noOfVaccancies": noOfVaccancies,
    "postedOn": postedOn,
    "postedAt": postedAt,
    "minSalary": minSalary,
    "maxSalary": maxSalary,
    "salary_cycle": salaryCycle,
    "timingFrom": timingFrom,
    "timingTo": timingTo,
    "status": status,
    "url": url,
    "experienceRequired": experienceRequired,
    "experienceFrom": experienceFrom,
    "experienceTo": experienceTo,
    "experienceType": experienceType,
    "startDate": "${startDate!.year.toString().padLeft(4, '0')}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}",
   // "joiningTime": "${joiningTime!.year.toString().padLeft(4, '0')}-${joiningTime!.month.toString().padLeft(2, '0')}-${joiningTime!.day.toString().padLeft(2, '0')}",
    "appliedCount": appliedCount,
    "shortlistedCount": shortlistedCount,
    "acceptedCount": acceptedCount,
    "rejectedCount": rejectedCount,
    "salaryNegotiable": salaryNegotiable,
    "reason_rejected": reasonRejected,
    "reason_uncleared": reasonUncleared,
    "reason_deactivated": reasonDeactivated,
    "reason_checks_rejected": reasonChecksRejected,
    "reason_checks_deactivated": reasonChecksDeactivated,
    "reason_checks_uncleared": reasonChecksUncleared,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "jobLocation": jobLocation,
    "district": district,
    "jobCategory": jobCategory,
  };
}

class Employer {
  Employer({
    this.id,
    this.code,
    this.name,
    this.pin,
    this.contact,
    this.altContact,
    this.email,
    this.regNumber,
    this.employerType,
    this.url,
    this.status,
    this.logo,
    this.createdAt,
    this.updatedAt,
    this.username,
    this.addressLine1,
    this.addressLine2,
    this.emailVerified,
    this.contactVerified,
    this.city,
    this.company,
  });

  int? id;
  String? code;
  String? name;
  String? pin;
  String? contact;
  String? altContact;
  String? email;
  String? regNumber;
  String? employerType;
  String? url;
  bool? status;
  String? logo;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? username;
  String? addressLine1;
  String? addressLine2;
  bool? emailVerified;
  bool? contactVerified;
  int? city;
  String? company;

  factory Employer.fromJson(Map<String, dynamic> json) => Employer(
    id: json["id"],
    code: json["code"],
    name: json["name"],
    pin: json["pin"],
    contact: json["contact"],
    altContact: json["alt_contact"],
    email: json["email"],
    regNumber: json["reg_number"],
    employerType: json["employer_type"],
    url: json["url"],
    status: json["status"],
    logo: json["logo"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    username: json["username"],
    addressLine1: json["addressLine1"],
    addressLine2: json["addressLine2"],
    emailVerified: json["emailVerified"],
    contactVerified: json["contactVerified"],
    city: json["city"],
    company: json["company"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "code": code,
    "name": name,
    "pin": pin,
    "contact": contact,
    "alt_contact": altContact,
    "email": email,
    "reg_number": regNumber,
    "employer_type": employerType,
    "url": url,
    "status": status,
    "logo": logo,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "username": username,
    "addressLine1": addressLine1,
    "addressLine2": addressLine2,
    "emailVerified": emailVerified,
    "contactVerified": contactVerified,
    "city": city,
    "company": company,
  };
}

class Staff {
  Staff({
    this.id,
    this.city,
    this.accessType,
    this.fullName,
    this.gender,
    this.photo,
    this.dob,
    this.code,
    this.appointedOn,
    this.position,
    this.placeOfWork,
    this.approvedCount,
    this.unclearedCount,
    this.rejectedCount,
    this.contact,
    this.email,
    this.address,
    this.pin,
    this.lastActive,
    this.lastLogin,
    this.live,
    this.loginEnable,
  });

  int? id;
  City? city;
  AccessType? accessType;
  String? fullName;
  String? gender;
  String? photo;
  String? dob;
  String? code;
  String? appointedOn;
  String? position;
  String? placeOfWork;
  int? approvedCount;
  int? unclearedCount;
  int? rejectedCount;
  String? contact;
  String? email;
  String? address;
  String? pin;
  DateTime? lastActive;
  DateTime? lastLogin;
  bool? live;
  bool? loginEnable;

  factory Staff.fromJson(Map<String, dynamic> json) => Staff(
    id: json["id"],
    city: City.fromJson(json["city"]),
    accessType: AccessType.fromJson(json["accessType"]),
    fullName: json["fullName"],
    gender: json["gender"],
    photo: json["photo"],
    dob: json["dob"],
    code: json["code"],
    appointedOn: json["appointedOn"],
    position: json["position"],
    placeOfWork: json["placeOfWork"],
    approvedCount: json["approvedCount"],
    unclearedCount: json["unclearedCount"],
    rejectedCount: json["rejectedCount"],
    contact: json["contact"],
    email: json["email"],
    address: json["address"],
    pin: json["pin"],
    lastActive: DateTime.parse(json["lastActive"]),
    lastLogin: DateTime.parse(json["last_login"]),
    live: json["live"],
    loginEnable: json["loginEnable"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "city": city!.toJson(),
    "accessType": accessType!.toJson(),
    "fullName": fullName,
    "gender": gender,
    "photo": photo,
    "dob": dob,
    "code": code,
    "appointedOn": appointedOn,
    "position": position,
    "placeOfWork": placeOfWork,
    "approvedCount": approvedCount,
    "unclearedCount": unclearedCount,
    "rejectedCount": rejectedCount,
    "contact": contact,
    "email": email,
    "address": address,
    "pin": pin,
    "lastActive": lastActive,
    "last_login": lastLogin,
    "live": live,
    "loginEnable": loginEnable,
  };
}

class AccessType {
  AccessType({
    this.id,
    this.permissions,
    this.name,
  });

  int? id;
  List<String>? permissions;
  String? name;

  factory AccessType.fromJson(Map<String, dynamic> json) => AccessType(
    id: json["id"],
    permissions: List<String>.from(json["permissions"].map((x) => x)),
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "permissions": List<dynamic>.from(permissions!.map((x) => x)),
    "name": name,
  };
}

class City {
  City({
    this.id,
    this.name,
    this.status,
    this.popular,
    this.createdAt,
    this.updatedAt,
    this.district,
  });

  int? id;
  String? name;
  bool? status;
  bool? popular;
  DateTime? createdAt;
  DateTime? updatedAt;
  District? district;

  factory City.fromJson(Map<String, dynamic> json) => City(
    id: json["id"],
    name: json["name"],
    status: json["status"],
    popular: json["popular"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    district: District.fromJson(json["district"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "status": status,
    "popular": popular,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "district": district!.toJson(),
  };
}

class District {
  District({
    this.id,
    this.name,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.state,
  });

  int? id;
  String? name;
  bool? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  District? state;

  factory District.fromJson(Map<String, dynamic> json) => District(
    id: json["id"],
    name: json["name"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    state: json["state"] == null ? null : District.fromJson(json["state"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "status": status,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "state": state == null ? null : state!.toJson(),
  };
}
