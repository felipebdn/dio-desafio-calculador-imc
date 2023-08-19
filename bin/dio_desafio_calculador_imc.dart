import 'package:dio_desafio_calculador_imc/exception/invalid_values_person_exception.dart';
import 'dart:convert';
import 'dart:io';

import 'package:dio_desafio_calculador_imc/person.dart'
    as dio_desafio_calculador_imc;

void main(List<String> arguments) {
  print("Calcule seu IMC");

  var name = '';
  var weight = 0.0;
  var height = 0.0;

  print("Informe seu nome");
  var line = stdin.readLineSync(encoding: utf8);
  try {
    if ((line?.trim() == '')) {
      throw InvalidName();
    }
    name = line ?? '';
  } catch (e) {
    print(InvalidName());
    exit(0);
  }

  print("Informe seu peso em quilogramas");
  line = stdin.readLineSync(encoding: utf8);
  try {
    weight = double.parse(line ?? "0.0");
  } catch (e) {
    print(InvalidValuesPerson());
    exit(0);
  }

  print("Informe sua altura em metros");
  line = stdin.readLineSync(encoding: utf8);
  try {
    height = double.parse(line ?? "0.0");
  } catch (e) {
    print(InvalidValuesPerson());
    exit(0);
  }

  var person = dio_desafio_calculador_imc.Person(name, weight, height);
  var data = person.getImc();

  print(
      "${data["name"]} seu IMC é de: ${data["imc"]} e voce esta categorizado como: ${data["category"]}");
}
