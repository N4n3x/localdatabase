// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produit.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProduitAdapter extends TypeAdapter<Produit> {
  @override
  final int typeId = 1;

  @override
  Produit read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Produit(
      name: fields[0] as String,
      prix: fields[1] as double,
      magasins: fields[2] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Produit obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prix)
      ..writeByte(2)
      ..write(obj.magasins);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProduitAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
