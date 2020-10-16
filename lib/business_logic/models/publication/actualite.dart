import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class Actualite {
  //fields
  String actid;
  String description;
  String titre;
  DateTime date;

  dynamic proprietaire;

  List<dynamic> commentaires = [];
  List<dynamic> jaimes = [];
  List<dynamic> photos = [];
  

  //constructor with all fields
  Actualite.full({
    this.actid,
    this.description,
    this.titre,
    this.date,
    this.proprietaire,
    this.commentaires,
    this.jaimes,
    this.photos,
  });

  // constructor : user from a map => get a user from a map of data : all fields
  factory Actualite.fromMap(Map<String, dynamic> data) {
    if (data == null) {
      return null;
    }
    final String actid = data['actid'];
    if (actid == null) {
      return null;
    }

    String description = data['description'];

    String titre = data['titre'];
    DateTime date = data['date'].toDate();

    dynamic proprietaire = data['proprietaire'];

    List<dynamic> commentaires = new List<dynamic>.from(data['commentaires']);
    List<dynamic> jaimes = new List<dynamic>.from(data['jaimes']);
    List<dynamic> photos = new List<dynamic>.from(data['photos']);
    
    return Actualite.full(
      actid: actid,
      description: description,
      titre: titre,
      date: date,
      proprietaire: proprietaire,
      commentaires: commentaires,
      jaimes: jaimes,
      photos: photos,
    );
  }
  // constructor from document
  factory Actualite.fromDocument(DocumentSnapshot doc) {
    return Actualite.fromMap(doc.data);
  }

  // change a Nwes to a map : all fields
  Map<String, dynamic> toMap() {
    return {
      'actid': actid,
      'commentaires': commentaires,
      'jaimes': jaimes,
      'proprietaire':proprietaire,
      'photos': photos,
      'titre': titre,
      'date': date,
    };
  }

  // equals : check if two users are equal ;
  @override
  int get hashCode => hashValues(actid, titre);

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    final Actualite otherUser = other;
    return actid == otherUser.actid && titre == otherUser.titre;
  }
}
