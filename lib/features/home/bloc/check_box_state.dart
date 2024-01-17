abstract class CheckBoxState {
  final bool isChecked;

  const CheckBoxState(this.isChecked);
}

class CheckBoxChecked extends CheckBoxState{
  const CheckBoxChecked(super.isChecked);
}