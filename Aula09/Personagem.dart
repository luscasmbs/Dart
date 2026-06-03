abstract class Personagem {
  String nome;
  Personagem(this.nome);

  void atacar();
}

class Guerreiro extends Personagem {
  Guerreiro(String nome) : super(nome);

  @override
  void atacar() {
    print("Eu sou Aragorn, filho de Arathorn; e se por minha vida ou morte eu puder salvá-lo, eu o farei.!");
  }
}

class Mago extends Personagem {
  Mago(String nome) : super(nome);

  @override
  void atacar() {
    print("Não passarás!!");
  }
}

