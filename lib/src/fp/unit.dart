// Representa a ausência de valor
// Isso é necessário porque na programação funcional não existe métodos void. Toda função DEVE retornar
// alguma coisa
final class Unit {

  @override
  String toString() {
    return "Unit{}";
  }
}

Unit get unit => Unit();