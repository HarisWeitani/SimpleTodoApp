import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_todo_app/features/home/bloc/check_box_event.dart';
import 'package:simple_todo_app/features/home/bloc/check_box_state.dart';

class CheckBoxBloc extends Bloc<CheckBoxEvent, CheckBoxState> {



  CheckBoxBloc(): super(const CheckBoxChecked(false)) {
    on<ToggleCheckBox>((event, emit) {
      emit(CheckBoxChecked(!state.isChecked));
    },

    );
  }

  void onItemClicked(ToggleCheckBox event, Emitter<CheckBoxState> emit) async {
    emit(CheckBoxChecked(!state.isChecked));
  }
}