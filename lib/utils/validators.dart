String? fieldValidator(String? value) {
  if (value!.isEmpty) {
    return "Field must not be empty.";
  }
  return null;
}
String? emailValidator(String? value) {
  if (value!.isEmpty) {
    return "Email/Phone is required";
  }
  return null;
}