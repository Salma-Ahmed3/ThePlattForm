// // ignore_for_file: unnecessary_null_in_if_null_operators

// import 'package:mueen/screens/individuals/indiv_employee/indiv_employee_list_data.dart';

// class IndivEmployeeFilter {


//   GenderType? genderType;
//   MarriedType? marriedType;
//   ExperienceTypes? experienceTypes;
//   ReligionTypes? religionTypes;
//   String? ageFrom;
//   String? ageTo;
//   List<String> skills = [];
//   int? pageIndex;
//   int? pageSize;

//   Map<String, dynamic> toJson() => {
//     "sex": genderType == null ? null : (genderType == GenderType.male ? [1] : [2]),
//     "maritalStatus": marriedType == null
//         ? null
//         : (marriedType == MarriedType.married ? [2] : [1, 3]),
//     "experience": experienceTypes == null
//         ? null
//         : (experienceTypes == ExperienceTypes.experience ? [2] : [1]),
//     "religion": religionTypes == null
//         ? null
//         : (religionTypes == ReligionTypes.muslim ? [1] : [2, 5]),
//     "age": [ageFrom , ageTo],
//     "skills":  skills.isEmpty
//         ? null
//         : List<String>.from(skills.map((x) => x)),
//     "pageIndex": pageIndex,
//     "pageSize": pageSize,
//   };
// }