class ResponseData {
  ResponseData({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });
  late final int id;
  late final String name;
  late final String status;
  late final String species;
  late final String type;
  late final String gender;
  late final Origin origin;
  late final Location location;
  late final String image;
  late final List<String> episode;
  late final String url;
  late final String created;

  ResponseData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    species = json['species'];
    type = json['type'];
    gender = json['gender'];
    origin = Origin.fromJson(json['origin']);
    location = Location.fromJson(json['location']);
    image = json['image'];
    episode = List.castFrom<dynamic, String>(json['episode']);
    url = json['url'];
    created = json['created'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['status'] = status;
    _data['species'] = species;
    _data['type'] = type;
    _data['gender'] = gender;
    _data['origin'] = origin.toJson();
    _data['location'] = location.toJson();
    _data['image'] = image;
    _data['episode'] = episode;
    _data['url'] = url;
    _data['created'] = created;
    return _data;
  }
}

class Origin {
  Origin({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  Origin.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['url'] = url;
    return _data;
  }
}

class Location {
  Location({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  Location.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['url'] = url;
    return _data;
  }
}
