import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ourESchool/core/services/AuthenticationServices.dart';

import '../../../locator.dart';

class DatabaseManager {
  final CollectionReference profileList =
  FirebaseFirestore.instance.collection('Colleges');

  Future<void> createUserData(String usertype,String name, String rollNo, String semester, String course, String branch, String batch, String uid) async {
    return await profileList.doc('India').collection(usertype).doc(uid).set({'name': name, 'rollNo': rollNo, 'semester': semester , 'course': course, 'branch': branch,'batch': batch});
  }

  Future updateUserList(String usertype, String name, String rollNo, String semester, String course, String branch, String batch, String uid) async {
    return await profileList.doc('India').collection(usertype).doc(uid).update({
      'name': name, 'rollNo': rollNo, 'semester': semester , 'course': course, 'branch': branch,'batch': batch
    });
  }

  Future getUsersList(String usertype) async {
    List itemsList = [];
    try {
      await profileList.doc('India').collection(usertype).get().then((querySnapshot) {

        querySnapshot.docs.forEach((element) {
          print(element.data());
          itemsList.add(element.data());
        });
      });
      return itemsList;

    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future getUsersList2(String usertype) async {
    List itemsList = [];
    try {
      await profileList.doc('India').collection(usertype).doc(locator<AuthenticationServices>().firebaseUser.uid.toString()).get().then((element) {
        itemsList.add(element.data());
        print(element.data());
      });
      return itemsList;

    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}