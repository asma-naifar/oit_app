import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class MembreComiteOIT {
  String mbreId;
  String nom;
  String prenom;

  List<dynamic> evenements;
  List<dynamic> actualites;

    MembreComiteOIT.full({
    this.mbreId,
    this.nom,
    this.prenom,
    this.evenements,
    this.actualites,
  });

  factory MembreComiteOIT.fromMap(Map<String, dynamic> data) {
    if (data == null) {
      return null;
    }
    final String mbreId = data['mbreId'];
    if (mbreId == null) {
      return null;
    }

    String nom = data['nom'];
    String prenom = data['prenom'];
    List<dynamic> evenements = new List<dynamic>.from(data['evenements']);
    List<dynamic> actualites = new List<dynamic>.from(data['actualites']);

    return MembreComiteOIT.full(
      mbreId: mbreId,
      nom: nom,
      prenom: prenom,
      evenements: evenements,
      actualites:actualites,
    );
  }
  factory MembreComiteOIT.fromDocument(DocumentSnapshot doc) {
    return MembreComiteOIT.fromMap(doc.data);
  }

  Map<String, dynamic> toMap() {
    return {
      'mbreId': mbreId,
      'nom': nom,
      'prenom': prenom,
      'evenements': evenements,
      'actualites':actualites,
    };
  }

  @override
  int get hashCode => hashValues(mbreId, nom);

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    final MembreComiteOIT otherUser = other;
    return mbreId == otherUser.mbreId;
  }
}