import 'package:flutter/material.dart';

class CheckBoxTile extends StatelessWidget {

  final String title;
  final bool onCheckBox;
  final VoidCallback onChangedCallback;

  const CheckBoxTile({
    super.key,
    required this.title,
    required this.onCheckBox,
    required this.onChangedCallback,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text(title),
        value: onCheckBox,
        onChanged: (value) {
          onChangedCallback();
        },
    );
  }
}
