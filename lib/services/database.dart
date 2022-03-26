import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../models/user.dart';
class DatabaseService{
  //collections reference
  final CollectionReference brewCollection = FirebaseFirestore.instance.collection('brews');
  final String? uid;

  DatabaseService({this.uid});
  //function updates or creates a doc for particular uid
  Future updateUserData(String? sugars, String? name, int? strength ) async{
    return await brewCollection.doc(uid).set({
      'sugars':sugars,
      'name': name,
      'strength':strength
    }

    );
  }

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

  //stream for the userbrewIngridients
  Stream<dataModelUserBrewIng> get UserBrewdata{
    return brewCollection.doc(uid).snapshots().
    map(_brewIngFromSnapshot);
  }*/

}