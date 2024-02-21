import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_todo_app/features/home/bloc/check_box_bloc.dart';
import 'package:simple_todo_app/features/home/bloc/check_box_state.dart';
import 'package:simple_todo_app/features/home/models/ItemEntity.dart';
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
    List<ItemEntity> itemList = [
      ItemModel("Item 1", false),
      ItemModel("Item 2", false),
      ItemModel("Item 3", false),
      ItemModel("Item 4", false),
      ItemModel("Item 5", false),
    ];

    return BlocBuilder<CheckBoxBloc, CheckBoxState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: itemList.length,
          itemBuilder: (context, index) {
            // return _buildItem(context, state, itemList[index].title);
            if(state is CheckBoxChecked) {
              return CheckBoxTile(
                title: "${itemList[index].title} | ${itemList[index].isChecked}",
                onCheckBox: itemList[index].isChecked,
                onChangedCallback: () {
                  context.read<CheckBoxBloc>().add(ToggleCheckBox());
                },
              );
            }
            if(state is CheckBoxUnChecked) {
              return CheckBoxTile(
                title: "${itemList[index].title} | ${itemList[index].isChecked}",
                onCheckBox: itemList[index].isChecked,
                onChangedCallback: () {
                  context.read<CheckBoxBloc>().add(ToggleCheckBox());
                },
              );
            }
          },
        );
      },
    );
  }

  _buildItem(BuildContext context, CheckBoxState state, String title) {
    return CheckBoxTile(
      title: "Ajib ${state.isChecked}",
      onCheckBox: state.isChecked,
      onChangedCallback: () {
        context.read<CheckBoxBloc>().add(ToggleCheckBox());
      },
    );
  }
}
