void main() {
  int valor1 = 2;
  int valor2 = 4;
  List<int> valores = [2, 4, 6, 8];
  double resultado = 0;
  Operator operacion = Operator.sumatoria;

  switch (operacion) {
    case Operator.suma:
      resultado = (valor1 + valor2).toDouble();
      break;
    case Operator.resta:
      resultado = (valor1 - valor2).toDouble();
      break;
    case Operator.multiplicacion:
      resultado = (valor1 * valor2).toDouble();
      break;
    case Operator.modulo:
      resultado = (valor1 % valor2).toDouble();
      break;
    case Operator.factorial:
      int factorial = 1;
      int contador = 1;
      while (factorial <= valor1) {
        factorial *= contador;
        contador++;
      }
      ;
      print(factorial);
      break;
    case Operator.sumatoria:
      for (int i = 0; i < valores.length; i++) {
        resultado = resultado + valores[i];
      }
      print(resultado);
      break;
    case Operator.producto:
      resultado = 1;
      for (int i = 0; i < valores.length; i++) {
        resultado = resultado + valores[i];
        resultado *= valores[i];
      }
      break;
    default:
      print("Ingresa valores correctos");
  }
  if (resultado < 0) {
    print("$resultado Negativo");
  } else {
    print("El resultado es: $resultado");
  }
}

enum Operator {
  suma,
  resta,
  multiplicacion,
  modulo,
  factorial,
  sumatoria,
  producto
}
