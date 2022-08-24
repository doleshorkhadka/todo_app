class Tasks {
  Tasks({required this.text});
  final String? text;
  bool isChecked = false;
  void toggleChecked() => isChecked = !isChecked;
}
