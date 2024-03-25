import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/models/loading_detail_model/loading_detail_model.dart';
import 'package:customer_connect/feature/data/models/loading_header_in_model/loading_header_in_model.dart';
import 'package:customer_connect/feature/data/models/loading_headermodel/loading_headermodel.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:dartz/dartz.dart';

abstract class ILoginRepo {
  Future<Either<MainFailures, LoginUserModel>> userLogin(
      String username, String password);
}

abstract class ILoadingRepo {
  Future<Either<MainFailures, List<LoadingHeadermodel>>> getLoadingHeaders(
      LoadingHeaderInModel loadingIn);

  Future<Either<MainFailures, List<LoadingDetailModel>>> getLoadingDetail(
      String iD);
}
