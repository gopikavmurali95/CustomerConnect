import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/customer_settings_model/customer_settings_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'customer_settings_event.dart';
part 'customer_settings_state.dart';
part 'customer_settings_bloc.freezed.dart';

@injectable
class CustomerSettingsBloc
    extends Bloc<CustomerSettingsEvent, CustomerSettingsState> {
  final ICustomerSettingsRepo customerSettingsRepo;
  CustomerSettingsBloc(this.customerSettingsRepo)
      : super(CustomerSettingsState.initial()) {
    on<GetCustomerSettingsEvent>((event, emit) async {
      Either<MainFailures, CustomerSettingsModel> settings =
          await customerSettingsRepo.getCustomerSettings(event.usrID);

      emit(
        settings.fold(
          (l) => const CustomerSettingsFailedState(),
          (r) => GetCustomerSettingsState(settings: r),
        ),
      );
    });
  }
}
