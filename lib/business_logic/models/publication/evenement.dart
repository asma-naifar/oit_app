import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class Evenement{
  //fields
  String evtid;
  DateTime date;

  String description;
  GeoPoint localisation;
  String titre;

  List<dynamic> organisateurs = [];
  List<dynamic> participants = [];
  List<dynamic> photos = [];

  //constructor with all fields
  Evenement.full({
    this.evtid,
    this.date,
    this.description,
    this.localisation,
    this.photos,
    this.organisateurs,
    this.participants,
    this.titre,
  });

  // constructor : event from a map => get an event from a map of data : all fields
  factory Evenement.fromMap(Map<String, dynamic> data) {
    if (data == null) {
      return null;
    }
    final String evtid = data['evtid'];
    if (evtid == null) {
      return null;
    }

    DateTime date = data['date'].toDate();
    String description = data['description'];
    GeoPoint localisation = data['localisation'];
    String titre = data['titre'];

    List<dynamic> organisateurs = new List<dynamic>.from(data['organisateurs']);
    List<dynamic> participants = new List<dynamic>.from(data['participants']);
    List<dynamic> photos = new List<dynamic>.from(data['photos']);

    return Evenement.full(
      evtid: evtid,
      date: date,
      description: description,
      localisation: localisation,
      organisateurs: organisateurs,
      participants: participants,
      photos: photos,
      titre: titre,
    );
  }
  // constructor from document
  factory Evenement.fromDocument(DocumentSnapshot doc) {
    return Evenement.fromMap(doc.data);
  }

  // change an event to a map : all fields
  Map<String, dynamic> toMap() {
    return {
      'evtid': evtid,
      'date': date,
      'description': description,
      'localisation': localisation,
      'organisateurs': organisateurs,
      'participants': participants,
      'photos': photos,
      'titre': titre,
    };
  }

  // equals : check if two events are equal ;
  @override
  int get hashCode => hashValues(evtid, titre);

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    final Evenement otherUser = other;
    return evtid == otherUser.evtid && titre == otherUser.titre;
  }
}
