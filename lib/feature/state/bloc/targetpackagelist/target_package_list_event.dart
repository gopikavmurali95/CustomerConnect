part of 'target_package_list_bloc.dart';

@freezed
class TargetPackageListEvent with _$TargetPackageListEvent {
  const factory TargetPackageListEvent.getTargetPackageListEvent(
      {required String pkgID,
      required String fromDate,
      required String rotID,
      required String serachQuery}) = GetTargetPackageListEvent;

  const factory TargetPackageListEvent.clearTargetPackageList() =
      ClearTargetPackageList;
}
