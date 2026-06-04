import 'dart:math';

import 'Aluno.dart';



void main() {
  final random = Random();

  List<Turma> turmas = List.generate(4, (turmaIndex) {
    List<Aluno> alunos = List.generate(20, (alunoIndex) {
      return Aluno(
        nome: 'Aluno ${alunoIndex + 1}',
        nota1: random.nextInt(11).toDouble(),
        nota2: random.nextInt(11).toDouble(),
        nota3: random.nextInt(11).toDouble(),
      );
    });

    return Turma(
      nome: 'Turma ${turmaIndex + 1}',
      alunos: alunos,
    );
  });

  for (var turma in turmas) {
    print('\n${turma.nome}');
    print('=' * 40);

    for (var aluno in turma.alunos) {
      print(aluno);
    }
  }
}
