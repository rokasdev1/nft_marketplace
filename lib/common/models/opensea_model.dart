class OpenseaModel {
  OpenseaModel({
    required this.assets,
  });

  List<Assets>? assets;

  OpenseaModel.fromJson(Map<String, dynamic> json) {
    assets = List.from(json['assets']).map((e) => Assets.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['assets'] = assets!.map((e) => e.toJson()).toList();
    return data;
  }
}

class Assets {
  Assets({
    required this.imageUrl,
    required this.name,
    this.description,
    required this.permalink,
  });

  String? imageUrl;
  String? name;
  String? description;
  String? permalink;

  Assets.fromJson(Map<String, dynamic> json) {
    imageUrl = json['image_url'];
    name = json['name'];
    description = null;
    permalink = json['permalink'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['image_url'] = imageUrl;
    data['name'] = name;
    data['description'] = description;
    data['permalink'] = permalink;
    return data;
  }
}
