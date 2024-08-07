import 'dart:convert';
import 'dart:developer';
import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/get_task_header_in_model/get_task_header_in_model.dart';
import 'package:customer_connect/feature/data/models/get_task_headers_out_model/get_task_headers_out_model.dart';

import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IMerchandiseTaskHeaderRepo)
class MerchandiseTaskRepo implements IMerchandiseTaskHeaderRepo {
  @override
  Future<Either<MainFailures, List<GetTaskHeadersOutModel>>> getTaskHeader(
      GetTaskHeaderInModel taskdetails) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + merchandiseTaskHeaderUrl),
          body: taskdetails.toJson());
      //log("FromDate: ${taskdetails.fromDate}, ToDate: ${taskdetails.toDate}, Status: ${taskdetails.status}");
      log(' Task Header  Response: ${response.body}');
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> headerdata = json['result'];
        List<GetTaskHeadersOutModel> headers = headerdata
            .map<GetTaskHeadersOutModel>(
                (json) => GetTaskHeadersOutModel.fromJson(json))
            .toList();
        return right(headers);
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
