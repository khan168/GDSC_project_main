import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_gdsc_competion/models/user.dart';
import 'package:google_gdsc_competion/services/Auth.dart';

import '../models/user.dart';
import 'database.dart';

class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  dataModelUser? _userFromFireBase(User user){
    return user!=null ? dataModelUser(uid: user.uid):null;
  }

  //auth change user stream-->  i believe this will help me fetch data for each id
  Stream<dataModelUser?> get user{
    return _auth.authStateChanges().
    map((User? u) => _userFromFireBase(u!));
  }

  //sign in anony
  Future signInAnon() async{
    try{
       UserCredential result = await _auth.signInAnonymously();
       User? user = result.user;//FirebaseUser
       return _userFromFireBase(user!);
    } catch(e){
      print(e.toString());
      return null;
    }
  }

  //sign in with email and pass
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return _userFromFireBase(user!);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  //register with email
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      //create a new document for the user with the uid
      //await DatabaseService(uid: user!.uid).updateUserData('0', 'new memeber', 100);
      return _userFromFireBase(user!);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  //sign out--> reture type future cuz async
  Future signout() async{
    try{
      return await _auth.signOut();

    }catch(e){
      print(e.toString());
      return null;

    }
  }
}