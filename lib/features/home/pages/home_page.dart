import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_todo_app/features/home/bloc/check_box_bloc.dart';
import 'package:simple_todo_app/features/home/bloc/check_box_state.dart';
import 'package:simple_todo_app/features/home/widgets/checkbox_tile.dart';

import '../bloc/check_box_event.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ajib",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: BlocProvider(
        create: (context) => CheckBoxBloc(),
        child: _buildBody(),
      ),
    );
  }

  _buildBody() {
    return BlocBuilder<CheckBoxBloc, CheckBoxState>(
      builder: (context, state) {
        return CheckBoxTile(
            title: "Ajib ${state.isChecked}",
            onCheckBox: state.isChecked,
            onChangedCallback: () {
              context.read<CheckBoxBloc>().add(ToggleCheckBox());
            },
        );
      },
    );
  }
}
