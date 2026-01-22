class Validators {
  static String? required(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Pflichtfeld";
    }
    return null;
  }
}
