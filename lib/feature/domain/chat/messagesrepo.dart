/* import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/domain/chat/models/message_model/message_model.dart';
import 'package:customer_connect/feature/domain/chat/msgabstractrepos.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:crypto/crypto.dart';

@LazySingleton(as: IMessageRepo)
class MessagesRepo implements IMessageRepo {
  @override
  Future<Either<MainFailures, List<MessageModel>>> getallmessages(
      String mail, String uniqueid) async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      final user = FirebaseAuth.instance.currentUser;
      final snapshot = await firestore
          .collection('Chats')
          .doc(user!.uid)
          .collection(mail)
          .orderBy('date')
          .get();
      List<MessageModel> messagelist = snapshot.docs.map((doc) {
        return MessageModel.fromJson(doc.data());
      }).toList();
      return right(messagelist);
    } catch (e) {
      return left(const MainFailures.clientfailure());
    }
  }

  @override
  Future<Either<MainFailures, String>> sendmessage(MessageModel message,
      String uniqueid, String fromname, String toName) async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;

      firestore.collection('Chats').doc(uniqueid).set({
        "name": fromname,
        "toname": toName,
        "lastmessage": message.message ?? '',
        "frommail": message.fromuser,
        "tomail": message.toEmail,
        "chat-id": uniqueid,
        "time": '${DateTime.now().hour}:${DateTime.now().minute}',
        "datetime": message.datetime
      });
      firestore
          .collection('Chats')
          .doc(uniqueid)
          .collection('messages')
          .add(message.toJson());
      return right('success');
    } catch (e) {
      log(e.toString());
      return left(const MainFailures.clientfailure());
    }
  }

  Stream<List<MessageModel>> getMessageStream(String mail, String? uniqueid) {
    // final user = FirebaseAuth.instance.currentUser;
    return FirebaseFirestore.instance
        .collection('Chats')
        .doc(uniqueid)
        .collection('messages')
        .orderBy('datetime')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        return MessageModel.fromJson(doc.data());
      }).toList();
    });
  }
}

String generateUniqueId(String str1, String str2) {
  String combinedString = "$str1|$str2";
  List<int> bytes = utf8.encode(combinedString);
  Digest digest = sha1.convert(bytes);

  return digest.toString();
}
 */