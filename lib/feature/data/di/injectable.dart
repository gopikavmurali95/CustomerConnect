import 'package:customer_connect/feature/data/di/injectable.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getit = GetIt.instance;

@InjectableInit()
Future<void> configureinjection() async {
  getit.init(environment: Environment.prod);
}
