import 'Personagem.dart';

void main() {
  List<Personagem> herois = [
    Guerreiro("Aragorn"),
    Mago("Gandalf")
  ];

  for (var heroi in herois) {
    heroi.atacar();
  }
}