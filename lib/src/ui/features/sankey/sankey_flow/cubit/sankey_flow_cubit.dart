import 'package:flutter_bloc/flutter_bloc.dart';

import 'sankey_flow_state.dart';
export 'sankey_flow_state.dart';

class SankeyFlowCubit extends Cubit<SankeyFlowState> {
  SankeyFlowCubit() : super(const SankeyFlowState());

  void setPrompt(String prompt) => emit(state.copyWith(prompt: prompt));
}
