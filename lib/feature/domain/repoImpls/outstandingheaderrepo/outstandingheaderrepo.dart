import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/models/out_standing_header/OutStandOutModel.dart';
import 'package:customer_connect/feature/data/models/out_standing_header/OutStandingHeaderModel.dart';
import 'package:dartz/dartz.dart';
// import 'package:http/http.dart' as http;

import '../../../data/abstractrepo/abstractrepo.dart';

class OutStandingHeadRepo implements IOutStandingHeaderRepo {
  @override
  Future<Either<MainFailures, List<OutStandOutModel>>> getOutStandingHeaders(
      OutStandingHeaderModel outStandIn) {
    // TODO: implement getOutStandingHeaders
    throw UnimplementedError();
  }
}
