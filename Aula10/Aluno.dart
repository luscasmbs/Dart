class Aluno {
  final String nome;
  final double nota1;
  final double nota2;
  final double nota3;

  Aluno({
    required this.nome,
    required this.nota1,
    required this.nota2,
    required this.nota3,
  });

  double get media => (nota1 + nota2 + nota3) / 3;

  String get situacao {
    if (media >= 7) {
      return 'Aprovado';
    } else if (media >= 5) {
      return 'Recuperação';
    } else {
      return 'Reprovado';
    }
  }

  @override
  String toString() {
    return '$nome | '
        'N1: $nota1 | '
        'N2: $nota2 | '
        'N3: $nota3 | '
        'Média: ${media.toStringAsFixed(2)} | '
        '$situacao';
  }
}
class Turma {
  final String nome;
  final List<Aluno> alunos;

  Turma({
    required this.nome,
    required this.alunos,
  });
}
