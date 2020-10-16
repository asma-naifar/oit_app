import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class Convention {
  String convId;
  DateTime date;

  String description;
  String titre;

  List<dynamic> jaimes = [];
  List<dynamic> photos = [];

  Convention.full({
    this.convId,
    this.description,
    this.titre,
    this.date,
    this.jaimes,
    this.photos,
  });

  factory Convention.fromMap(Map<String, dynamic> data) {
    if (data == null) {
      return null;
    }
    final String convId = data['convId'];
    if (convId == null) {
      return null;
    }

    String description = data['description'];

    String titre = data['titre'];
    DateTime date = data['date'].toDate();

    List<dynamic> jaimes = new List<dynamic>.from(data['jaimes']);
    List<dynamic> photos = new List<dynamic>.from(data['photos']);

    return Convention.full(
      convId: convId,
      description: description,
      titre: titre,
      date: date,
      jaimes: jaimes,
      photos: photos,
    );
  }
  // constructor from document
  factory Convention.fromDocument(DocumentSnapshot doc) {
    return Convention.fromMap(doc.data);
  }

  // change a Nwes to a map : all fields
  Map<String, dynamic> toMap() {
    return {
      'convId': convId,
      'jaimes': jaimes,
      'photos': photos,
      'titre': titre,
      'date': date,
    };
  }

  // equals : check if two users are equal ;
  @override
  int get hashCode => hashValues(convId, titre);

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    final Convention otherUser = other;
    return convId == otherUser.convId;
  }
}
