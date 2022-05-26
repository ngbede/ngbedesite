import 'package:form_field_validator/form_field_validator.dart';
import '../utils/field.dart';

List<FieldValidator<dynamic>> validator({
  required Field field,
  required String text,
}) {
  List<FieldValidator<dynamic>> response = [
    RequiredValidator(errorText: "${text.toLowerCase()} is a required field")
  ];

  if (field == Field.email) {
    response.add(EmailValidator(errorText: "invalid email"));
  }
  return response;
}
