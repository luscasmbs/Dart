import 'dart:io';
void main(){
  print("Qual questão você quer visualizar de 1 a 9");
  String? numero = stdin.readLineSync();
  int ques = int.tryParse(numero ?? '0') ?? 0;
  if(ques == 1){
    quest1();
  } else if(ques == 2){
    quest2();
  } else if(ques == 3){
    quest3();
  } else if(ques == 4){
    quest4();
  }else if(ques == 5){
    quest5();
  }else if(ques == 6){
    quest6();
  } else if(ques == 7){
    quest7();
  }
  else if(ques == 8){
    quest8();
  } else{
    quest9();
  }



}
void quest1(){
  List<String> produtos = ['Arroz', 'Feijão', 'Macarrão', 'Leite', 'Café'];
  produtos.add('Pão');
  produtos.add('Pudim');
  while(true) {
    produtos.forEach(print);
    for (int i = 0; i < produtos.length; i++) {
      print("${i} = ${produtos[i]}");
    }
    print(
        "Qual o produto que você quer remover? se não quiser remover, digite sair");
    String? numero = stdin.readLineSync();
    if (numero != "sair") {
      int remover = int.tryParse(numero ?? '0') ?? 0;
      if(remover > 6 || remover < 0){
        print("Erro: O indice é invalido");
        continue;
      }
      print('Produto: ${produtos[remover]} foi removido');
      produtos.removeAt(remover);
    } else {
      break;
    }
  }
  print("A quantidade de produtos existentes é de: ${produtos.length}");
  if(produtos.isEmpty){
    print("A lista está vazia.");
  }
  main();
}
void quest2(){
  List<String> Alunos = ['Lucas', 'Guilherme', 'Carol', 'Davi', 'Gabi'];
  while(true){
    Alunos.forEach(print);
    for (int i = 0; i < Alunos.length; i++) {
      print("${i} = ${Alunos[i]}");
    }
    print("Qual aluno vocÊ quer visualizar?");
    String? numero = stdin.readLineSync();
    int alunos = int.tryParse(numero ?? '0') ?? 0;
    print("${Alunos[alunos]}");
    print("Qual aluno vocÊ quer remover? se não quiser remover, digite sair");
    String? remo = stdin.readLineSync();
    if(remo != 'sair') {
      int ver = int.tryParse(numero ?? '0') ?? 0;
      print("Removendo o aluno ${Alunos[ver]}");
      Alunos.removeAt(ver);
      print("Total de alunos presentes é de: ${Alunos.length}");
    } else {
      break;
    }


  }
  main();

}
void quest3(){
  List<int> numeros = [1, 2, 3, 4,5,6,7,8,9,10,11,12];
  for(int i = 0; i < numeros.length; i++){
    if((numeros[i] % 2) == 0){
      print(numeros[i]);
    }
  }
}
void quest4(){
  List<String> nomes = ['Lucas', 'Guilherme', 'Carol', 'Davi', 'Gabi'];
  nomes.forEach((nome) => print('bem vindo $nome'));

}
void quest5(){
  List<double> notas = [9.2, 10, 4, 8.5];
  double media = (notas[0]+notas[1]+notas[2]+notas[3])/4;
  print(media);

}
void quest6(){
  List<String> nomes = ['Indisponivel', 'Banana', 'Pão', 'Batata', 'Indisponivel'];
  print(nomes);
  print("FILTRANDO...");
  for(int i = 0; i< nomes.length; i++){
    if(nomes[i] == 'Indisponivel'){
      nomes.removeAt(i);
    }
  }
  print(nomes);
}
void quest7(){
  List<int> idades = [1];
  while(true){
    print("Insira uma idade, ou pressine sair: ");
    String? numero = stdin.readLineSync();
    if(numero != 'sair'){
      int idade = int.tryParse(numero ?? '0') ?? 0;
      idades.add(idade);
    } else {
      break;
    }
    print("Lista criada: \n $idades");


  }
  for(int i = 0; i < idades.length; i++){
    if(idades[i]<18){
      idades.removeAt(i);
    }
  }
  print(idades);
}
void quest8(){
  List<String> palavras = [];
  while(true) {
    print("Insira uma palavra, ou pressine sair: ");
    String? palavra = stdin.readLineSync();
    if(palavra != 'sair'){
      if (palavra != null) {
        palavras.add(palavra);
      }
    } else {
      break;
    }
  }
  for(int i = 0; i<palavras.length; i++){
    if(palavras[i].length<5){
      palavras.removeAt(i);
    }
  }
  print(palavras);
}
void quest9(){
  List<double> precos = [];
  while(true) {
    print("Insira um valor, ou pressine sair: ");
    String? numero = stdin.readLineSync();
    if(numero != 'sair') {
      double preco = double.tryParse(numero ?? '0') ?? 0;
      precos.add(preco);
    } else{
      break;
    }
  }
  for(int i = 0; i<precos.length; i++){
    precos[i] = precos[i]-(precos[i]*0.10);
  }
  print(precos);
    }
