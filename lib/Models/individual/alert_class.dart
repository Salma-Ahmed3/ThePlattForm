class AlertClass {
  bool? selected;
  bool? display;
  bool? show;
  bool? showSecName;
  String? displayName;
  String? imagePath;
  String? displaySecName = "";

  AlertClass(
      {this.displaySecName,
        this.selected,
        this.displayName,
        this.showSecName,
        this.imagePath,
        this.display,
        this.show});
}