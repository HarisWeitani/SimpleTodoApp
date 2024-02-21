import 'package:equatable/equatable.dart';

class ItemEntity extends Equatable {
  final String title;
  final bool isChecked;

  const ItemEntity({required this.title, required this.isChecked});

  @override
  List<Object?> get props {
    return [title, isChecked];
  }
}

class ItemModel extends ItemEntity {
  const ItemModel(
      String title,
      bool isChecked
  ) : super(
      title: title,
      isChecked: isChecked
  );
}
