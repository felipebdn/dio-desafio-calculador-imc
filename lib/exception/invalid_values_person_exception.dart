class InvalidValuesPerson implements Exception {
  String error() => "Valores inválidos";

  @override
  String toString() {
    return "InvalidValuesPerson: ${error()}";
  }
}

class InvalidName implements Exception {
  String error() => "Nome invalido";

  @override
  String toString() {
    // TODO: implement toString
    return "InvalidName: ${error()}";
  }
}
