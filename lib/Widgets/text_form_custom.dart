import 'package:flutter/material.dart';

class TextFormCustom extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final IconData? icon;
  final int? line;

  const TextFormCustom(
      {required this.controller, required this.labelText, this.icon, this.line, Key? key})
      : super(key: key);

  @override
  State<TextFormCustom> createState() => _TextFormCustomState();
}

class _TextFormCustomState extends State<TextFormCustom> {
  @override
  Widget build(BuildContext context) {
    if (widget.icon != null) {
      return TextFormField(
        controller: widget.controller,
        maxLines: widget.line,
        decoration: InputDecoration(
            labelText: widget.labelText,
            labelStyle: const TextStyle(
                color: Colors.blue, fontWeight: FontWeight.w300),
            border: const OutlineInputBorder(),
            icon: Icon(widget.icon)),
      );
    } else {
      return TextFormField(
        controller: widget.controller,
        maxLines: widget.line,
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle:
              const TextStyle(color: Colors.blue, fontWeight: FontWeight.w300),
          border: const OutlineInputBorder(),
        ),
      );
    }
  }
}
