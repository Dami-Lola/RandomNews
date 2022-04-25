import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors.dart';

InputDecoration getInputDecoration({
  bool? error,
}) {
  return const InputDecoration(
    border: UnderlineInputBorder(
      borderSide: BorderSide.none,
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide.none,
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide.none,
    ),
  );
}

class InputField extends StatelessWidget {
  const InputField(
      {Key? key,
        this.type,
        this.maxLines,
        this.minLines,
        this.error,
        this.onChanged,
        this.textInputAction,
        this.message,})
      :
        super(key: key);


  final TextInputType? type;
  final String? message;
  final bool? error;
  final int? maxLines;
  final int? minLines;
  final TextInputAction? textInputAction;
  final Function(String)? onChanged;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Theme(
          data: ThemeData(
            focusColor: Colors.red,
          ),
          child: TextFormField(
              maxLines: maxLines ?? 1,
              minLines: minLines ?? 1,
              onChanged: onChanged,
              textInputAction: textInputAction ?? TextInputAction.next,
              keyboardType: type,
              style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'PTSerifRegular',
                  color: Colors.black),
              decoration: getInputDecoration(
                  error: error,
              ),
          ),
        ),
        // SizedBox(height: 70,),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text(
              message ?? '',
              style: TextStyle(
                fontSize: 12.0,
                color: error == true ? Colors.red : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
