// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'general_state.freezed.dart';

@freezed
class GeneralState with _$GeneralState {
  const factory GeneralState.success() = _GeneralSuccessState;
  const factory GeneralState.clientError() = _GeneralClientErrorState;
  const factory GeneralState.serverError() = _GeneralServerErrorState;
  const factory GeneralState.networkError() = _GeneralNetworkErrorState;
}
