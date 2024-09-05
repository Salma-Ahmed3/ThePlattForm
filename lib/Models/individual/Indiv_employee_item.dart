class EmployeeItem {
  EmployeeItem({
    this.model,
    this.totalCount,
    this.totalCountInPages,
  });

  List<EmployeeInfo>? model;
  int? totalCount;
  int? totalCountInPages;

  factory EmployeeItem.fromJson(Map<String, dynamic> json) => EmployeeItem(
        model: json["model"] == null
            ? []
            : List<EmployeeInfo>.from(
                json["model"].map((x) => EmployeeInfo.fromJson(x))),
        totalCount: json["totalCount"] ?? 0,
        totalCountInPages: json["totalCountInPages"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "model": model == null
            ? null
            : List<dynamic>.from(model!.map((x) => x.toJson())),
        "totalCount": totalCount ?? 0,
        "totalCountInPages": totalCountInPages ?? 0,
      };
}

class EmployeeInfo {
  EmployeeInfo({
    this.employeeId,
    this.age,
    this.image,
    this.idNumber,
    this.statusCode,
    this.notes,
    this.candidateId,
    this.indvContractRequestId,
    this.employeeType,
    this.englishName,
    this.arabicName,
    this.name,
    this.nationalityName,
    this.professionName,
    this.religion,
    this.religionName,
    this.extraNotes,
    this.gender,
    this.genderName,
    this.maritalStatus,
    this.maritalStatusName,
    this.vedioUrl,
    this.prevExperiences,
    this.experienceCount,
    this.empExperience,
    this.experiancePeriod,
    this.experiancePeriodDescription,
    this.languages,
    this.videoName,
    this.skills,
    this.treatChildren,
    this.speakEnglish,
    this.speakArabic,
    this.automaticDriving,
    this.manualDriving,
    this.cleaning,
    this.canCook,
    this.treatOld,
    this.videoUrl,
  });

  String? employeeId;
  int? age;
  String? image;
  String? videoUrl;
  String? idNumber;
  int? statusCode;
  String? notes;
  String? candidateId;
  dynamic indvContractRequestId;
  int? employeeType;
  String? englishName;
  String? arabicName;
  String? name;
  String? nationalityName;
  String? professionName;
  dynamic religion;
  String? religionName;
  String? extraNotes;
  int? gender;
  String? genderName;
  int? maritalStatus;
  String? maritalStatusName;
  dynamic vedioUrl;
  dynamic prevExperiences;
  dynamic experienceCount;
  dynamic empExperience;
  dynamic experiancePeriod;
  dynamic experiancePeriodDescription;
  List<Info>? languages;
  dynamic videoName;
  List<Info>? skills;
  bool? treatChildren;
  bool? speakEnglish;
  bool? speakArabic;
  bool? automaticDriving;
  bool? manualDriving;
  bool? cleaning;
  bool? canCook;
  bool? treatOld;

  factory EmployeeInfo.fromJson(Map<String, dynamic> json) => EmployeeInfo(
        employeeId: json["employeeId"] ?? '',
        age: json["age"] ?? '' as int?,
        image: json["image"] ?? "",
        videoUrl: json["videoUrl"] ?? "",
        idNumber: json["idNumber"] ?? '',
        statusCode: json["statusCode"] ?? '' as int?,
        notes: json["notes"],
        candidateId: json["candidateId"] ?? '',
        indvContractRequestId: json["indvContractRequestId"],
        employeeType: json["employeeType"] ?? '' as int?,
        englishName: json["englishName"] ?? '',
        arabicName: json["arabicName"] ?? '',
        name: json["name"] ?? '',
        nationalityName: json["nationalityName"] ?? '',
        professionName: json["professionName"] ?? '',
        religion: json["religion"],
        religionName: json["religionName"] ?? '',
        extraNotes: json["extraNotes"],
        gender: json["gender"] ?? 0,
        genderName: json["genderName"] ?? '',
        maritalStatus: json["maritalStatus"],
        maritalStatusName: json["maritalStatusName"],
        vedioUrl: json["vedioUrl"],
        prevExperiences: json["prevExperiences"],
        experienceCount: json["experienceCount"],
        empExperience: json["empExperience"],
        experiancePeriod: json["experiancePeriod"] ?? 0,
        experiancePeriodDescription: json["experiancePeriodDescription"] ?? "0",
        languages: json["languages"] == null
            ? []
            : List<Info>.from(json["languages"].map((x) => Info.fromJson(x))),
        videoName: json["videoName"],
        skills: json["skills"] == null
            ? []
            : List<Info>.from(json["skills"].map((x) => Info.fromJson(x))),
        treatChildren: json["treatChildren"],
        speakEnglish: json["speakEnglish"],
        speakArabic: json["speakArabic"],
        automaticDriving: json["automaticDriving"],
        manualDriving: json["manualDriving"],
        cleaning: json["cleaning"],
        canCook: json["canCook"],
        treatOld: json["treatOld"],
      );

  Map<String, dynamic> toJson() => {
        "employeeId": employeeId,
        "age": age,
        "image": image,
        "videoUrl": videoUrl,
        "idNumber": idNumber,
        "statusCode": statusCode,
        "notes": notes,
        "candidateId": candidateId,
        "indvContractRequestId": indvContractRequestId,
        "employeeType": employeeType,
        "englishName": englishName,
        "arabicName": arabicName,
        "name": name,
        "nationalityName": nationalityName,
        "professionName": professionName,
        "religion": religion,
        "religionName": religionName,
        "extraNotes": extraNotes,
        "gender": gender,
        "genderName": genderName,
        "maritalStatus": maritalStatus,
        "maritalStatusName": maritalStatusName,
        "vedioUrl": vedioUrl,
        "prevExperiences": prevExperiences,
        "experienceCount": experienceCount,
        "empExperience": empExperience,
        "experiancePeriod": experiancePeriod,
        "experiancePeriodDescription": experiancePeriodDescription ?? "0",
        "languages": languages == null
            ? null
            : List<dynamic>.from(languages!.map((x) => x.toJson())),
        "videoName": videoName,
        "skills": skills == null
            ? null
            : List<dynamic>.from(skills!.map((x) => x.toJson())),
        "treatChildren": treatChildren,
        "speakEnglish": speakEnglish,
        "speakArabic": speakArabic,
        "automaticDriving": automaticDriving,
        "manualDriving": manualDriving,
        "cleaning": cleaning,
        "canCook": canCook,
        "treatOld": treatOld,
      };
}

class Info {
  Info({
    this.name,
    this.icone,
    this.category,
  });

  String? name;
  String? icone;
  int? category;

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        name: json["name"],
        icone: json["icone"],
        category: json["category"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "icone": icone,
      };
}

class Candidate {
  Candidate({
    this.name,
    this.nationalityName,
    this.professionName,
    this.religion,
    this.religionName,
    this.gender,
    this.genderName,
    this.maritalStatus,
    this.maritalStatusName,
    this.birthdate,
    this.age,
    this.experiancePeriod,
    this.careOfElderly,
    this.canCook,
    this.speakEnglish,
    this.speakArabic,
    this.dealWithChildren,
    this.candidateId,
    this.washingClothes,
    this.ironing,
    this.cleaning,
    this.otherSkills,
    this.automaticDriving,
    this.manualDriving,
    this.clean,
  });

  String? name;
  dynamic nationalityName;
  dynamic professionName;
  dynamic religion;
  dynamic religionName;
  dynamic gender;
  dynamic genderName;
  int? maritalStatus;
  String? maritalStatusName;
  dynamic birthdate;
  int? age;
  dynamic experiancePeriod;
  bool? careOfElderly;
  bool? canCook;
  bool? speakEnglish;
  bool? speakArabic;
  bool? dealWithChildren;
  dynamic candidateId;
  dynamic washingClothes;
  dynamic ironing;
  bool? cleaning;
  dynamic otherSkills;
  bool? automaticDriving;
  bool? manualDriving;
  dynamic clean;

  factory Candidate.fromJson(Map<String, dynamic> json) => Candidate(
        name: json["name"],
        nationalityName: json["nationalityName"],
        professionName: json["professionName"],
        religion: json["religion"],
        religionName: json["religionName"],
        gender: json["gender"],
        genderName: json["genderName"],
        maritalStatus: json["maritalStatus"],
        maritalStatusName: json["maritalStatusName"],
        birthdate: json["birthdate"],
        age: json["age"],
        experiancePeriod: json["experiancePeriod"],
        careOfElderly: json["careOfElderly"],
        canCook: json["canCook"],
        speakEnglish: json["speakEnglish"],
        speakArabic: json["speakArabic"],
        dealWithChildren: json["dealWithChildren"],
        candidateId: json["candidateId"],
        washingClothes: json["washingClothes"],
        ironing: json["ironing"],
        cleaning: json["cleaning"],
        otherSkills: json["otherSkills"],
        automaticDriving: json["automaticDriving"],
        manualDriving: json["manualDriving"],
        clean: json["clean"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "nationalityName": nationalityName,
        "professionName": professionName,
        "religion": religion,
        "religionName": religionName,
        "gender": gender,
        "genderName": genderName,
        "maritalStatus": maritalStatus,
        "maritalStatusName": maritalStatusName,
        "birthdate": birthdate,
        "age": age,
        "experiancePeriod": experiancePeriod,
        "careOfElderly": careOfElderly,
        "canCook": canCook,
        "speakEnglish": speakEnglish,
        "speakArabic": speakArabic,
        "dealWithChildren": dealWithChildren,
        "candidateId": candidateId,
        "washingClothes": washingClothes,
        "ironing": ironing,
        "cleaning": cleaning,
        "otherSkills": otherSkills,
        "automaticDriving": automaticDriving,
        "manualDriving": manualDriving,
        "clean": clean,
      };
}
