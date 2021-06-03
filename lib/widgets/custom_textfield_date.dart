import 'package:flutter/material.dart';

class CustomTextFieldDate extends StatelessWidget {
  const CustomTextFieldDate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: Container(
            height: 50,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.center,
              readOnly: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 20),
                  isDense: true,
                  hintText: "02/06/2021",
                  border: OutlineInputBorder()),
            ),
          ),
        ),
        Positioned(
          left: 2,
          bottom: 5,
          child: IconButton(
              icon: Icon(Icons.alarm),
              onPressed: () {
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(Duration(days: 20)));
              }),
        ),
      ],
    );
  }
}
