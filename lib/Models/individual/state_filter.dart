
class StateFilter {
  String stateNameFAR;
  String stateNameFEN;
  String stateNameSAR;
  String stateNameSEN;
  String titleName;
  bool skillState;
  bool? firstSelected;
  bool? scendSelected;
  Function onFirstTap;
  Function onScendTap;
  StateFilter({
    required this.stateNameFAR,
    required this.stateNameFEN,
    required this.stateNameSAR,
    required this.stateNameSEN,
    required this.onFirstTap,
    required this.titleName,
    required this.firstSelected,
    required this.scendSelected,
    required this.onScendTap,
    this.skillState = false,
  });
}