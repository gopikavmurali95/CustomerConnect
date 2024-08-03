import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/post_settlement_approval/post_settlement_approval.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'post_settlement_approval_event.dart';
part 'post_settlement_approval_state.dart';
part 'post_settlement_approval_bloc.freezed.dart';

@injectable
class PostSettlementApprovalBloc
    extends Bloc<PostSettlementApprovalEvent, PostSettlementApprovalState> {
  final ISettlementApprovalHeaderRepo postapprovalRepo;

  PostSettlementApprovalBloc(this.postapprovalRepo)
      : super(PostSettlementApprovalState.initial()) {
    on<GetPostApprovalEvent>((event, emit) async {
      Either<MainFailures, PostSettlementApprovalModel> postapprov =
          await postapprovalRepo.postApprovaldetails(event.udpID);

      emit(postapprov.fold((l) => const PostSettlementApprovalFailedState(),
          (r) => GetPostSettlementApprovalState(postApproval: r)));
    });

    on<ClearPostApprovalEvent>((event, emit) {
      emit(const GetPostSettlementApprovalState(postApproval: null));
    });

    on<PostLoadingApprovalEvent>((event, emit) {
      emit(const PostLoadingState());
    });
  }
}
