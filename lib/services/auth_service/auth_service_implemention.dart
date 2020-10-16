
import 'package:firebase_auth/firebase_auth.dart';
import 'package:oit_app/services/auth_service/auth_service.dart';

class AuthServiceImp implements AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromFirebaseUser(FirebaseUser user) {
      return user != null ? User(uid: user.uid, email: user.email) : null;
    }
  
    //auth change user stream
  
    Stream get user {
      return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
    }
  
    @override
    Future signInWithEmailAndPassword(String email, String password) async {
      try {
        AuthResult result = await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        FirebaseUser user = result.user;
        return _userFromFirebaseUser(user);
      } catch (e) {
        print(e.toString());
        return null;
      }
    }
  
    @override
    Future registerWithEmailAndPassword(String email, String password) async {
      try {
        AuthResult result = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        FirebaseUser user = result.user;
        return _userFromFirebaseUser(user);
      } catch (e) {
        print(e.toString());
        return null;
      }
    }
  
    @override
    Future signOut() async {
      try {
        return await _auth.signOut();
      } catch (e) {
        print(e.toString());
        return null;
      }
    }
  
    @override
    Stream getUserStream() {
      return user;
    }
  }
  
  class User {
    String uid;
    String email;
    User({this.email, this.uid});
}

