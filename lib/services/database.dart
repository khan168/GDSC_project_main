import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:google_gdsc_competion/models/institutionFromFire.dart';

import '../models/user.dart';
class DatabaseService{
  //collections reference
  final CollectionReference profileCollection = FirebaseFirestore.instance.collection('profiles');
  final String? uid;

  DatabaseService({this.uid});
  //function updates or creates a doc for particular uid
  Future updateUserData(String email, String name, String address, String url, String hours,String city, List items) async{
    return await profileCollection.doc(uid).set({
      'email':email,
      'name': name,
      'address':address,
      'imageURL':url,
      'workingHours':hours,
      'city':city,
      'items':items
    }

    );
  }

  datamodeluserprofile _insListFromSnapShot(DocumentSnapshot snapshot){
      return datamodeluserprofile(
        name: snapshot.get('name'),
        city: snapshot.get('city'),
        items: snapshot.get('items'),
        workingHours: snapshot.get('workingHours'),
        address: snapshot.get('address'),
      );
    }




  Stream<datamodeluserprofile> get userprofiledata{
    return profileCollection.doc(uid).snapshots().
    map(_insListFromSnapShot);
  }

  Stream<QuerySnapshot> get list_of_ins{
    return profileCollection.snapshots();
  }

  List<SnapshotToIns> _InsListsFromSnap(QuerySnapshot snapshot) {
    return snapshot.docs.map((d) {
      return SnapshotToIns(
          name: d.get('name') ?? '',
          city: d.get('city') ?? '',
          workingHours: d.get('workingHours') ?? '',
          items: [],
          address: d.get('address') ?? '');
    }).toList();
  }

  Stream<List<SnapshotToIns>> get InsAll_stream{
    return profileCollection.snapshots().map(_InsListsFromSnap);
  }

  final Stream<QuerySnapshot> z = FirebaseFirestore.instance.collection('profiles').snapshots();

  //brew list from snapshot
  /*List<BrewModel> _brewListFromSnapShot(QuerySnapshot snapshot){
    return snapshot.docs.map((doc){
      return BrewModel(
        name: doc.get('name') ?? '',
        strength: doc.get('strength') ?? 0 ,
        sugars: doc.get('sugars') ?? '0',
      );
    }).toList();
  }*/

  //get brews stream
  /*Stream<List<BrewModel>> get brews{
    return brewCollection.snapshots().
    map(_brewListFromSnapShot);
  }

  //func to make brewdata from snapshot
  dataModelUserBrewIng _brewIngFromSnapshot(DocumentSnapshot snapshot){
    return dataModelUserBrewIng(
      uid: uid,
      name: snapshot.get('name'),
      sugars: snapshot.get('sugars'),
      strength: snapshot.get('strength'),
    );
  }

  stream for the userbrewIngridients
  Stream<dataModelUserBrewIng> get UserBrewdata{
    return brewCollection.doc(uid).snapshots().
    map(_brewIngFromSnapshot);
  }*/

  /*Stream<> get UserBrewdata{
    return profileCollection.doc(uid).snapshots().
    map(_insListFromSnapShot);*/

}