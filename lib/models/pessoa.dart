class Pessoa {
  String _nome = "";
  double _altura = 0.0;
  double _peso = 0.0;

  void setNome(String nome) {
    _nome = nome;
  }

  void setAltura(double altura){
    _altura = altura;
  }

  void setPeso(double peso){
    _peso = peso;
  }

  String getNome() => _nome;

  double getAltura() => _altura;

  double getPeso() => _peso;

  String calcularIMC(double peso, double altura){
    double imc = (peso/(altura*altura));

    if(imc < 16){
      return "IMC: ${imc.toStringAsFixed(2)}. Magreza grave";
    } else if(imc >= 16 && imc < 17){
      return "IMC: ${imc.toStringAsFixed(2)}. Magreza moderada";
    }else if(imc >= 17 && imc < 18.5){
      return "IMC: ${imc.toStringAsFixed(2)}. Magreza leve";
    }else if(imc >= 18.5 && imc < 25){
      return "IMC: ${imc.toStringAsFixed(2)}. Saudável";
    }else if(imc >= 25 && imc < 30){
      return "IMC: ${imc.toStringAsFixed(2)}. Sobrepeso";
    }else if(imc >= 30 && imc < 35){
      return "IMC: ${imc.toStringAsFixed(2)}. Obesidade grau I";
    }else if(imc >= 35 && imc < 40){
      return "IMC: ${imc.toStringAsFixed(2)}. Obesidade grau II (severa)";
    } else{
      return "IMC: ${imc.toStringAsFixed(2)}. Obesidade grau III (mórbida)";
    }
  }

  @override
  String toString() {
    return "Olá, $_nome, esses são os seus dados: \nAltura: $_altura m \nPeso: $_peso kg \n${calcularIMC(_peso, _altura)}";
  }

}