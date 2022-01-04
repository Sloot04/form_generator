import 'package:flutter/material.dart';

class CheckBoxCustom extends StatefulWidget {
  final String title;
  final bool isChecked;
  const CheckBoxCustom({Key? key, required this.isChecked, required this.title})
      : super(key: key);

  @override
  State<CheckBoxCustom> createState() => _CheckBoxCustomState();
}

class _CheckBoxCustomState extends State<CheckBoxCustom> {
  late bool checked;

  @override
  void initState() {
    checked = widget.isChecked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text(widget.title),
        tileColor: Colors.blue.shade100,
        value: checked,
        onChanged: (value) {
          setState(() {
            checked = value!;
          });
        });
  }
}
