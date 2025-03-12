import 'package:flutter/material.dart';

class BuildTextWidget extends StatefulWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;

  const BuildTextWidget({
    Key? key,
    required this.text,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black54,
    this.textAlign = TextAlign.center,
  }) : super(key: key);

  @override
  _BuildTextWidgetState createState() => _BuildTextWidgetState();
}

class _BuildTextWidgetState extends State<BuildTextWidget> {
  late String displayedText;

  @override
  void initState() {
    super.initState();
    displayedText = widget.text;
  }

  void updateText(String newText) {
    setState(() {
      displayedText = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      displayedText,
      textAlign: widget.textAlign,
      style: TextStyle(
        fontSize: widget.fontSize,
        fontWeight: widget.fontWeight,
        color: widget.color,
      ),
    );
  }
}
