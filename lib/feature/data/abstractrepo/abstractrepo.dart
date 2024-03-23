import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:dartz/dartz.dart';

abstract class ILoginRepo {
  Either<MainFailures, LoginUserModel> userLogin(
      String username, String password);
}
