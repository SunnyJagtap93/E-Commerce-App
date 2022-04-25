import 'dart:convert';

class products {
  static List<Item> items = [
    
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageurl;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.imageurl,
  });

  Item copyWith({
    int? id,
    String? name,
    String? desc,
    num? price,
    String? color,
    String? imageurl,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      imageurl: imageurl ?? this.imageurl,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'desc': desc});
    result.addAll({'price': price});
    result.addAll({'color': color});
    result.addAll({'imageurl': imageurl});

    return result;
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      desc: map['desc'] ?? '',
      price: map['price'] ?? 0,
      color: map['color'] ?? '',
      imageurl: map['imageurl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, imageurl: $imageurl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.price == price &&
        other.color == color &&
        other.imageurl == imageurl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        imageurl.hashCode;
  }
}
