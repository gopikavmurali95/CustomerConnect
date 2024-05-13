import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pass_visibilty_state.dart';
part 'pass_visibilty_cubit.freezed.dart';

class PassVisibiltyCubit extends Cubit<PassVisibiltyState> {
  PassVisibiltyCubit() : super(PassVisibiltyState.initial());
}
