import 'dart:convert';
import 'dart:developer';


import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_documents_model/cus_documents_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IcusDocumentsModel)
class CusDocumentsRepo implements IcusDocumentsModel {
  @override
  Future<Either<MainFailures, List<CusDocumentsModel>>> getCusDocuments(
      String cusID) async {
    try {
      final response = await http.post(
        Uri.parse(baseUrl + cusDocumentsUrl),
        body: {"CusID": cusID},
      );

      if (response.statusCode == 200) {
        log("documnets:${response.body}");
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> docdata = json['result'];
        List<CusDocumentsModel> doclist = docdata
            .map<CusDocumentsModel>((json) => CusDocumentsModel.fromJson(json))
            .toList();

        return right(doclist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }
}
