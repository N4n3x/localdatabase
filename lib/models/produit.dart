import 'package:hive/hive.dart';
part 'produit.g.dart';

@HiveType(typeId: 0)
class Produit {
  Produit({this.name, this.prix, magasins});

  @HiveField(0)
  String name;

  @HiveField(1)
  double prix;

  @HiveField(2)
  List<String> magasins;

  @override
  String toString() {
    return '$name: $prix';
  }
}
