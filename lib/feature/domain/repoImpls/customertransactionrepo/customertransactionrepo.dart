import 'dart:convert';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/customer_transaction_model/customer_transaction_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
// import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ICustomerTransactionRepo)
class CustomerTransactionRepo implements ICustomerTransactionRepo {
  @override
  Future<Either<MainFailures, CustomerTransactionModel>> ctCount(
      String userID) async {
    // var logger = Logger();
    try {
      final response = await http.post(
          Uri.parse(baseUrl + customertransactioncountsurl),
          body: {"UserID": userID});
      if (response.statusCode == 200) {
        // logger.w('Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final custcount = CustomerTransactionModel.fromJson(json["result"][0]);
        return right(custcount);
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
