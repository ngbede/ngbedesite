import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:ngbedesite/utils/field.dart';

import '../utils/validator.dart';

class InputField extends StatefulWidget {
  final String title;
  final Field field;
  final bool validateField;
  final int? maxlen;
  final int maxLine;
  const InputField({
    Key? key,
    required this.title,
    required this.field,
    this.validateField = true,
    this.maxlen,
    this.maxLine = 1,
  }) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

const Color _activeColor = Color(0XFF27303D); // #2C303D

class _InputFieldState extends State<InputField> {
  TextEditingController? _controller;
  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Padding build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: _controller,
        onChanged: (value) {
          switch (widget.field) {
            case Field.name:
              contact.setName = value;
              break;
            case Field.email:
              contact.setEmail = value;
              break;
            case Field.message:
              contact.setMessage = value;
              break;
          }

          // print(contact.toJson());
        },
        validator: MultiValidator(
          validator(field: widget.field, text: widget.field.title),
        ),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17,
          color: _activeColor,
        ),
        maxLength: widget.maxlen,
        maxLines: widget.maxLine,
        cursorColor: const Color(0XFF27303D),
        cursorHeight: 30,
        decoration: InputDecoration(
          hintText: widget.title,
          hintStyle: const TextStyle(
            color: Color(0XFFA0A5B1),
            fontSize: 15,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          fillColor: Colors.white,
          filled: true,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0XFF5AAA9A),
              width: 2,
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0XFFE5E7EB),
            ),
          ),
        ),
      ),
    );
  }
}
