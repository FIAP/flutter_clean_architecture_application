import 'dart:convert';

import 'package:floor/floor.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
@entity
class Entry {
  @primaryKey
  int id;
  String? title;
  String? image;
  String? description;

  Entry({
    required this.id,
    required this.title,
    required this.image,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'image': image,
      'description': description,
    };
  }

  factory Entry.fromMap(Map<String, dynamic> map) {
    return Entry(
      id: map['id'] as int,
      title: map['title'] as String,
      image: map['image'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Entry.fromJson(String source) => Entry.fromMap(json.decode(source) as Map<String, dynamic>);
}
