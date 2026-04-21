import 'dart:convert';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/pending_approvals_model/pending_approvals_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
@LazySingleton(as: IPendingApprovalRepo)
class PendingApprovalsRepo implements IPendingApprovalRepo {
  @override
  Future<Either<MainFailures, List<PendingApprovalsModel>>>
      getPendingApprovalList(String userId) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + pendingApprovalsUrl),
          body: {"UserID": userId});

      if (response.statusCode == 200) {
        // log('response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> priceChange = json['result'];
        List<PendingApprovalsModel> pendingApprovalList = priceChange
            .map<PendingApprovalsModel>(
                (json) => PendingApprovalsModel.fromJson(json))
            .toList();
        return right(pendingApprovalList);
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
