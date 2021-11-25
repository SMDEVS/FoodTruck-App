import 'dart:convert';

class HomeModel {
  HomeModel({
    this.productlist,
  });

  final List<Product>? productlist;

  factory HomeModel.fromRawJson(String str) =>
      HomeModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        productlist: List<Product>.from(
            json["productlist"].map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "productlist": List<dynamic>.from(productlist!.map((x) => x.toJson())),
      };
}

class Product {
  Product({
    this.productname,
    this.nutritionalinfo,
  });

  final String? productname;
  final List<Nutritionalinfo>? nutritionalinfo;

  factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        productname: json["productname"],
        nutritionalinfo: List<Nutritionalinfo>.from(
            json["nutritionalinfo"].map((x) => Nutritionalinfo.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "productname": productname,
        "nutritionalinfo":
            List<dynamic>.from(nutritionalinfo!.map((x) => x.toJson())),
      };
}

class Nutritionalinfo {
  Nutritionalinfo({
    this.name,
    this.gram,
  });

  final String? name;
  final int? gram;

  factory Nutritionalinfo.fromRawJson(String str) =>
      Nutritionalinfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Nutritionalinfo.fromJson(Map<String, dynamic> json) =>
      Nutritionalinfo(
        name: json["name"] ?? "nutrition",
        gram: json["gram"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "gram": gram,
      };
}
