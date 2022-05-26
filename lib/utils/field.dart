import '../models/contact.dart';

enum Field {
  name("name"),
  email("email"),
  message("message");

  const Field(this.title);
  final String title;
}

// just use this global contact object to manage state
Contact contact = Contact();
