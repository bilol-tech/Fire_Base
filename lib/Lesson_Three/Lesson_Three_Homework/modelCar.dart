import 'package:cloud_firestore/cloud_firestore.dart';

class CarModel {
  final String name;
  final String desc;
  final num price;
  final String image;
  final num year;
  final num hp;
  final num speed;

  CarModel({required this.name, required this.desc, required this.price, required this.image, required this.year, required this.hp, required this.speed, });

  factory CarModel.fromJson(QueryDocumentSnapshot data) {
    return CarModel(
        name: data["name"], desc: data["desc"], price: data["price"],  image: data['image'], year: data['year'], hp: data['hp'], speed: data['speed']);
  }

  toJson() {
    return {"name": name, "desc": desc, "price": price, "image" : image, "year" : year, "hp" : hp, "speed" : speed};
  }
}