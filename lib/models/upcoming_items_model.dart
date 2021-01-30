// UpcomingItems Model Class for Item Shop Screen

class UpcomingItemsModel {
  int status;
  List<Data> data;

  UpcomingItemsModel({this.status, this.data});

  UpcomingItemsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String id;
  String name;
  String price;
  bool priceIcon;
  bool priceIconLink;
  Images images;
  String rarity;
  String type;
  String slug;
  String readableType;
  String description;
  bool bundleSet;

  Data(
      {this.id,
      this.name,
      this.price,
      this.priceIcon,
      this.priceIconLink,
      this.images,
      this.rarity,
      this.type,
      this.slug,
      this.readableType,
      this.description,
      this.bundleSet});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    priceIcon = json['priceIcon'];
    priceIconLink = json['priceIconLink'];
    images =
        json['images'] != null ? new Images.fromJson(json['images']) : null;
    rarity = json['rarity'];
    type = json['type'];
    slug = json['slug'];
    readableType = json['readableType'];
    description = json['description'];
    bundleSet = json['bundleSet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['priceIcon'] = this.priceIcon;
    data['priceIconLink'] = this.priceIconLink;
    if (this.images != null) {
      data['images'] = this.images.toJson();
    }
    data['rarity'] = this.rarity;
    data['type'] = this.type;
    data['slug'] = this.slug;
    data['readableType'] = this.readableType;
    data['description'] = this.description;
    data['bundleSet'] = this.bundleSet;
    return data;
  }
}

class Images {
  String icon;
  bool png;
  String gallery;
  String featured;
  bool frontView;
  bool backView;
  bool resizeAvailable;

  Images(
      {this.icon,
      this.png,
      this.gallery,
      this.featured,
      this.frontView,
      this.backView,
      this.resizeAvailable});

  Images.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    png = json['png'];
    gallery = json['gallery'];
    featured = json['featured'];
    frontView = json['frontView'];
    backView = json['backView'];
    resizeAvailable = json['resizeAvailable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['png'] = this.png;
    data['gallery'] = this.gallery;
    data['featured'] = this.featured;
    data['frontView'] = this.frontView;
    data['backView'] = this.backView;
    data['resizeAvailable'] = this.resizeAvailable;
    return data;
  }
}