import 'dart:io';
void main(){
  print("Qual questão você quer visualizar de 1 a 7");
  String? numero = stdin.readLineSync();
  int ques = int.tryParse(numero ?? '0') ?? 0;
  if(ques == 1){
    Produto qualquer = Produto("Notebook", 2000, 3);
    qualquer.mostrarDados();
    Produto qualquer1 = Produto("PC", 2200, 2);
    qualquer1.mostrarDados();
    Produto qualquer2 = Produto("Bike", 1000, 5);
    qualquer2.mostrarDados();
  } else if(ques == 2){
    Equipamento patr = Equipamento("Computador", 61368, "Sala 6", "Em funcionamento");
    patr.mostrarDado();
  } else if(ques == 3){
    Livro umlivro = Livro("Hobbit", "Tolkien", 1937);
    umlivro.mostrarLivros();
  } else if(ques == 4){
    Func clt = Func("Bob", "Faz tudo", 1600);
    clt.mostrarFuncionario();
  }else if(ques == 5){
    Personagem link = Personagem("LINK", 100, 20);
    link.atacar();
  }else if(ques == 6){
    Celular sam = Celular("Samsung", "S24Fe", 128);
    Celular app = Celular("Apple", "Iphone 14", 128);
    app.dados();
    sam.dados();
  } else{
    Curso ads = Curso("ADS", 1200, "Italo");
    ads.mostrar();
  }



}
class Produto{
  String nome;
  double preco;
  int quantidade;
  Produto(this.nome,this.preco, this.quantidade );
  var total = 0.0;
  void mostrarDados(){
    print("Nome do produto: $nome");
    print("preço do produto: $preco");
    print("Quantidade: $quantidade");
    total = quantidade*preco;
  }

}

class Equipamento{
  String nome;
  int patrimonio;
  String laboratorio;
  String status;
  Equipamento(this.nome, this.patrimonio, this.laboratorio, this.status);
  void mostrarDado(){
    print("O nome do patrimonio é: $nome \nO número do patrimonio é: $patrimonio\nO laboratório dele é: $laboratorio\nE o status do equipamento é: $status");

  }
}

class Livro{
  String nome;
  String autor;
  int ano;
  Livro(this.nome, this.autor, this.ano);
  void mostrarLivros(){
    print("Livro: $nome\nAutor: $autor\nAno de lançamento: $ano");
  }
}

class Func{
  String nome;
  String cargo;
  double salario;
  Func(this.nome, this.cargo,this.salario);
  void mostrarFuncionario(){
    print("Nome do funcionário: $nome\nCargo: $cargo\nSalário: $salario");
  }
}
class Personagem{
  String nome;
  int vida;
  int forca;
  Personagem(this.nome,this.vida,this.forca);
  void atacar(){
    print("O personagem $nome tem $vida hp, ele vai atar um inimigo!\nEle deu $forca de dano");
  }
}

class Celular{
  String marca;
  String modelo;
  int armazenamento;
  Celular(this.marca,this.modelo,this.armazenamento);
  void dados(){
    print("O celular é o $modelo\nA marca é: $marca\nEle tem ${armazenamento}gb de armazenamento");
  }
}
class Curso{
  String nome;
  int cargahora;
  String professor;
  Curso(this.nome,this.cargahora,this.professor);
  void mostrar(){
    print("O curso ${nome} tem $cargahora e o professor $professor");
  }
}
