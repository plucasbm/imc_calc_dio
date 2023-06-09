import 'dart:convert';
import 'dart:io';
import 'package:imc_calc/exceptions/nome_invalido_exception.dart';
import 'package:imc_calc/exceptions/numero_invalido_exception.dart';
import 'package:imc_calc/models/pessoa.dart';

void main(List<String> arguments) {
  Pessoa pessoa = Pessoa();

  print("Nome: ");
  var nome = stdin.readLineSync(encoding: utf8);

  try {
    if (nome == null) {
      throw NomeInvalidoException;
    }
  } catch (e) {
    print(NomeInvalidoException);
  }

  pessoa.setNome(nome!);

  try {
    print("Altura: ");
    var altura = double.parse(stdin.readLineSync(encoding: utf8)!);
    pessoa.setAltura(altura);
  } on NumeroInvalidoException {
    print(NumeroInvalidoException);
  }

  

  try {
  print("Peso: ");
  var peso = double.parse(stdin.readLineSync(encoding: utf8)!);
  pessoa.setPeso(peso);
} on NumeroInvalidoException{
  print(NumeroInvalidoException);
}

  print(pessoa);
}
