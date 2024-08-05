part of 'target_package_list_bloc.dart';

@freezed
class TargetPackageListState with _$TargetPackageListState {
  const factory TargetPackageListState.getTargetPackageListState(
          {required List<TargetPackageListModel>? targetPackageData}) =
      GetTargetPackageListState;

  const factory TargetPackageListState.targetPackageListFailure() =
      TargetPackageListFailure;

  factory TargetPackageListState.initial() =>
      const TargetPackageListState.getTargetPackageListState(
          targetPackageData: null);
}
