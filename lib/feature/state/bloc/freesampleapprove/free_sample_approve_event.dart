part of 'free_sample_approve_bloc.dart';

@freezed
class FreeSampleApproveEvent with _$FreeSampleApproveEvent {
  const factory FreeSampleApproveEvent.submitFreeSampleRequestEvent(
          {required FreeSampleApproveInModel approve}) =
      SubmitFreeSampleRequestEvent;

  const factory FreeSampleApproveEvent.freesamplesubmitLoadingEvent() =
      FreesamplesubmitLoadingEvent;
}
