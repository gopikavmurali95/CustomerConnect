import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/auto_update_resp_model/auto_update_resp_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auto_update_event.dart';
part 'auto_update_state.dart';
part 'auto_update_bloc.freezed.dart';

@injectable
class AutoUpdateBloc extends Bloc<AutoUpdateEvent, AutoUpdateState> {
  final IAutoUpdateRepo autoUpdateRepo;
  AutoUpdateBloc(this.autoUpdateRepo) : super(AutoUpdateState.initial()) {
    on<CheckForUpdatesEvent>((event, emit) async {
      Either<MainFailures, AutoUpdateRespModel> update =
          await autoUpdateRepo.getUpdateStatus(event.type);

      emit(update.fold(
          (l) => AutoUpdateStatusState(
              status: AutoUpdateRespModel(
                  msg: '', url: '', verCode: '-1', verName: '')),
          (r) => AutoUpdateStatusState(status: r)));
      // https://github.com/gopikavmurali95/CustomerConnect/releases/download/product/Customer.Connect.flutter.26-9-24.apk
    });
  }
}
