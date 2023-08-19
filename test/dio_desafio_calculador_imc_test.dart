import 'package:dio_desafio_calculador_imc/person.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    var person = Person("Felipe", 65, 1.80);
    expect(
        person.getImc(), {"name": "Felipe", "imc": 20, "category": "Saudável"});
  });
}
