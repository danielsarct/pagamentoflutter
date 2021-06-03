import 'package:flutter/material.dart';

class CustomLabel extends StatelessWidget {
  final String label;
  final String value;
  final TextStyle? style;
  final TextAlign? textAlign;
  CustomLabel({
    required this.label,
    this.value = '',
    this.style,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: value.isNotEmpty,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: style ?? Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              value,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
      replacement: Text(
        label,
        textAlign: textAlign ?? TextAlign.left,
        style: style ?? Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
