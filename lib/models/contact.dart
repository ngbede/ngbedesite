class Contact {
  String? name;
  String? email;
  String? message;

  Contact({
    this.name,
    this.email,
    this.message,
  });

  Map<String, String?> toJson() => {
        "name": name,
        "email": email,
        "message": message,
      };

  set setName(String name) {
    this.name = name;
  }

  set setEmail(String email) {
    this.email = email;
  }

  set setMessage(String message) {
    this.message = message;
  }
}
