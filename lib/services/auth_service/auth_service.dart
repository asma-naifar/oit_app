abstract class AuthService {
  Stream getUserStream();

  Future signInWithEmailAndPassword(String email, String password);

  Future registerWithEmailAndPassword(String email, String password);

  Future signOut();
}
