import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_download_percentage_state.dart';
part 'update_download_percentage_cubit.freezed.dart';

class UpdateDownloadPercentageCubit
    extends Cubit<UpdateDownloadPercentageState> {
  UpdateDownloadPercentageCubit()
      : super(UpdateDownloadPercentageState.initial());

  void updatePercentage(int progress) {
    emit(DownloadPercentageState(percentage: progress));
  }
}
