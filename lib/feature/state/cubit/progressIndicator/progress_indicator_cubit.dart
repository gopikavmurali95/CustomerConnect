import 'package:bloc/bloc.dart';
import 'package:customer_connect/main.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'progress_indicator_state.dart';
part 'progress_indicator_cubit.freezed.dart';

class ProgressIndicatorCubit extends Cubit<ProgressIndicatorState> {
  ProgressIndicatorCubit() : super(ProgressIndicatorState.initial());

  void showProgressBar(bool isLoading) {
    isLoadingProgress = true;
    emit(ShowProgresIndicatorState(isLoading: isLoading));
  }

  void removeProgressIndicator() {
    isLoadingProgress = false;
    emit(const RemoveProgressIndicatorState());
  }
}
