class Service {
  final String id;
  final String name;
  final String description;
  final String iconUrl;
  final String? serviceBackImageUrl;
  final String? serviceNote;

  Service({
    required this.id,
    required this.name,
    required this.description,
    required this.iconUrl,
    this.serviceBackImageUrl,
    this.serviceNote,
  });

  factory Service.fromJson(Map<String, dynamic> json) {
    return Service(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      iconUrl: json['iconUrl'],
      serviceBackImageUrl: json['serviceBackImageUrl'],
      serviceNote: json['serviceNote'],
    );
  }
}
