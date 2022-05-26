// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:ngbedesite/utils/field.dart';
import 'package:ngbedesite/widgets/button.dart';
import 'package:ngbedesite/widgets/inputfield.dart';
import 'email/mailer.dart';

// TODO: If there is an error show response to user

class ContactMe extends StatefulWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  State<ContactMe> createState() => _ContactMeState();
}

bool _showSpinner = false;

class _ContactMeState extends State<ContactMe> {
  void toggleSpinner() {
    setState(() {
      _showSpinner = !_showSpinner;
    });
  }

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0XFFF6FAFF),
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 30,
        ),
        child: Form(
          key: _formkey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Column(
            children: [
              const Text(
                "Contact Me\n\n",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              const InputField(
                title: "What's your name?",
                field: Field.name,
              ),
              const InputField(
                title: "What's your email?",
                field: Field.email,
              ),
              const InputField(
                title: "Input message...",
                field: Field.message,
                maxLine: 13,
              ),
              const SizedBox(height: 20),
              AppButton(
                function: () async {
                  if (_formkey.currentState!.validate()) {
                    toggleSpinner();
                    final bool status = await sendEmail(
                      senderName: contact.name!,
                      senderEmail: contact.email!,
                      message: contact.message!,
                    );
                    if (status) {
                      _formkey.currentState!.reset();
                      print("Message sent");
                      toggleSpinner();
                    }
                  }
                },
                spin: _showSpinner,
              )
            ],
          ),
        ),
      ),
    );
  }
}
