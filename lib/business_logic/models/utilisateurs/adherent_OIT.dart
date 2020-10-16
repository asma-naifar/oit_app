import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class AdherentOIT {
  String adhId;
  String nom;
  String prenom;
  String photoURL;
  List<dynamic> evenements;

  AdherentOIT.full({
    this.adhId,
    this.nom,
    this.prenom,
    this.photoURL,
    this.evenements,
  });

  factory AdherentOIT.fromMap(Map<String, dynamic> data) {
    if (data == null) {
      return null;
    }
    final String adhId = data['adhId'];
    if (adhId == null) {
      return null;
    }

    String nom = data['nom'];
    String prenom = data['prenom'];
    String photoURL = data['photoURL'];
    List<dynamic> evenements = new List<dynamic>.from(data['evenements']);

    return AdherentOIT.full(
      adhId: adhId,
      nom: nom,
      prenom: prenom,
      photoURL: photoURL,
      evenements: evenements,
    );
  }
  factory AdherentOIT.fromDocument(DocumentSnapshot doc) {
    return AdherentOIT.fromMap(doc.data);
  }

  Map<String, dynamic> toMap() {
    return {
      'adhId': adhId,
      'nom': nom,
      'prenom': prenom,
      'photoURL': photoURL,
      'evenements': evenements,
    };
  }

  @override
  int get hashCode => hashValues(adhId, nom);

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    final AdherentOIT otherUser = other;
    return adhId == otherUser.adhId;
  }
}
