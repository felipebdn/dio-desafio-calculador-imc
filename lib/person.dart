class Person {
  String _name = "";
  double _weight = 0;
  double _height = 0;

  Person(String name, double weight, double height) {
    _name = name;
    _weight = weight;
    _height = height;
  }

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }

  void setWeight(double weight) {
    _weight = weight;
  }

  double getWeight() {
    return _weight;
  }

  void setHeight(double height) {
    _height = height;
  }

  double getHeight() {
    return _height;
  }

  Map<String, dynamic> getImc() {
    double imc = _weight / (_height * _height);

    String category = "";

    if (imc < 16) {
      category = "Magreza grave";
    } else if (imc >= 16 && imc < 17) {
      category = "Magreza moderada";
    } else if (imc >= 17 && imc < 18.5) {
      category = "Magreza leve";
    } else if (imc >= 18.5 && imc < 25) {
      category = "Saudável";
    } else if (imc >= 25 && imc < 30) {
      category = "Sobrepeso";
    } else if (imc >= 30 && imc < 35) {
      category = "Obesidade Grau I";
    } else if (imc >= 35 && imc < 40) {
      category = "Obesidade Grau II (severa)";
    } else if (imc >= 40) {
      category = "Obesidade Grau III (mórbida)";
    } else {
      category = 'Sem resultado';
    }
    return {"name": _name, "imc": imc.floor(), "category": category};
  }
}
