import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class Societe {
  String socId;
  String nom;
  String domaine;
  String opportunites;
  
  Societe.full({
    this.socId,
    this.nom,
    this.domaine,
  });
  
  factory Societe.fromMap(Map<String, dynamic> data) {
    if (data == null) {
      return null;
    }
    final String socId = data['socId'];
    if (socId == null) {
      return null;
    }

    String nom = data['nom'];
    String domaine = data['domaine'];

    return Societe.full(
      socId: socId,
      nom: nom,
      domaine: domaine,
    );
  }
  factory Societe.fromDocument(DocumentSnapshot doc) {
    return Societe.fromMap(doc.data);
  }

  Map<String, dynamic> toMap() {
    return {
      'socId': socId,
      'nom': nom,
      'domaine': domaine,
    };
  }

  @override
  int get hashCode => hashValues(socId, nom);

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    final Societe otherUser = other;
    return socId == otherUser.socId;
  }
}
