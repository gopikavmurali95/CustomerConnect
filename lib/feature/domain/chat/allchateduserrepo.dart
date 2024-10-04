/* import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:customer_connect/feature/data/models/users_model/users_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GetAllChatRepo {
  final user = FirebaseAuth.instance.currentUser;

  Stream<List<UsersModel>> getUsersStream(String usermail) {
    return FirebaseFirestore.instance
        .collection('Chats')
        .snapshots()
        .map((qsnapshot) {
      return qsnapshot.docs
          .where((element) =>
              element['frommail'] == usermail || element['tomail'] == usermail)
          .map((doc) {
        return UsersModel.fromJson(doc.data());
      }).toList()
        ..sort((a, b) {
          DateTime aDateTime =
              DateTime.fromMillisecondsSinceEpoch(int.parse(a.datetime ?? '0'));
          DateTime bDateTime =
              DateTime.fromMillisecondsSinceEpoch(int.parse(b.datetime ?? '0'));
          return bDateTime.compareTo(aDateTime);
        });
    });
  }
}
 */
