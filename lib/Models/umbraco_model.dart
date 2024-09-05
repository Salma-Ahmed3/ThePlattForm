class UmbracoModel {
  System? system;
  List<ServiceItemChildren>? children;

  UmbracoModel({this.system, this.children});

  UmbracoModel.fromJson(Map<String, dynamic> json) {
    system = json['system'] != null ? System.fromJson(json['system']) : null;
    // fields = json['fields'] != null ? MainFields.fromJson(json['fields']) : null;
    if (json['children'] != null) {
      children = <ServiceItemChildren>[];
      json['children'].forEach((v) {
        children!.add(ServiceItemChildren.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (system != null) {
      data['system'] = system!.toJson();
    }
    // if (fields != null) {
    //   data['fields'] = fields!.toJson();
    // }
    if (children != null) {
      data['children'] = children!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class System {
  int? id;
  String? name;

  System({this.id, this.name});

  System.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class ServiceItemImage {
  System? system;
  FieldsService? fields;

  // List<Null>? children;

  ServiceItemImage({
    this.system,
    this.fields,
    /*this.children*/
  });

  ServiceItemImage.fromJson(Map<String, dynamic> json) {
    system = json['system'] != null ? System.fromJson(json['system']) : null;
    fields =
        json['fields'] != null ? FieldsService.fromJson(json['fields']) : null;
    // if (json['children'] != null) {
    //   children = <Null>[];
    //   json['children'].forEach((v) { children!.add(Null.fromJson(v)); });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (system != null) {
      data['system'] = system!.toJson();
    }
    if (fields != null) {
      data['fields'] = fields!.toJson();
    }
    // if (children != null) {
    //   data['children'] = children!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class ServiceItemChildren {
  System? system;
  FieldsService? fieldsService;

  // List<Null>? children;

  ServiceItemChildren({
    this.system,
    this.fieldsService,
    /*this.children*/
  });

  ServiceItemChildren.fromJson(Map<String, dynamic> json) {
    system = json['system'] != null ? System.fromJson(json['system']) : null;
    fieldsService =
        json['fields'] != null ? FieldsService.fromJson(json['fields']) : null;
    // if (json['children'] != null) {
    //   children = <Null>[];
    //   json['children'].forEach((v) { children!.add(Null.fromJson(v)); });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (system != null) {
      data['system'] = system!.toJson();
    }
    if (fieldsService != null) {
      data['fields'] = fieldsService!.toJson();
    }
    // if (children != null) {
    //   data['children'] = children!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class FieldsService {
  String? title;
  String? subTitle;
  FieldImageService? image;
  FieldImageService? lightImage;
  String? serviceType;

  FieldsService({this.title, this.subTitle, this.image, this.serviceType});

  FieldsService.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subTitle = json['subTitle'];
    image = json['image'] != null
        ? FieldImageService.fromJson(json['image'])
        : null;
    lightImage = json['lightImage'] != null
        ? FieldImageService.fromJson(json['lightImage'])
        : null;

    serviceType = json['serviceType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['subTitle'] = subTitle;
    if (image != null) {
      data['image'] = image!.toJson();
    }
    if (lightImage != null) {
      data['lightImage'] = lightImage!.toJson();
    }
    data['serviceType'] = serviceType;
    return data;
  }
}

class FieldImageService {
  System? system;
  FieldsImage? umbracoFile;

  // List<Null>? children;

  FieldImageService({
    this.system,
    this.umbracoFile,
    /*this.children*/
  });

  FieldImageService.fromJson(Map<String, dynamic> json) {
    system = json['system'] != null ? System.fromJson(json['system']) : null;
    umbracoFile =
        json['fields'] != null ? FieldsImage.fromJson(json['fields']) : null;
    // if (json['children'] != null) {
    //   children = <Null>[];
    //   json['children'].forEach((v) { children!.add(Null.fromJson(v)); });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (system != null) {
      data['system'] = system!.toJson();
    }
    if (umbracoFile != null) {
      data['umbracoFile'] = umbracoFile!.toJson();
    }
    // if (children != null) {
    //   data['children'] = children!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class FieldsImage {
  UmbracoFile? umbracoFile;

  FieldsImage({this.umbracoFile});

  FieldsImage.fromJson(Map<String, dynamic> json) {
    umbracoFile = json['umbracoFile'] != null
        ? UmbracoFile.fromJson(json['umbracoFile'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (umbracoFile != null) {
      data['umbracoFile'] = umbracoFile!.toJson();
    }
    return data;
  }
}

class UmbracoFile {
  String? src;

  UmbracoFile({this.src});

  UmbracoFile.fromJson(Map<String, dynamic> json) {
    src = json['src'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['src'] = src;
    return data;
  }
}
