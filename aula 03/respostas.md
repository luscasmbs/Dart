# Aula 03 - Respostas

## 1. Como adicionar um elemento à lista?

Em Dart, usamos `add()` para adicionar um elemento em uma lista.

Exemplo:

```dart
minhaLista.add(10);
```

## 2. Como adicionar múltiplos elementos?

Para adicionar vários elementos de uma vez, usamos `addAll()`.

Exemplo:

```dart
minhaLista.addAll([10, 20, 30]);
```

## 3. O que acontece em uma lista vazia?

Se a lista estiver vazia e usarmos `add()`, o elemento será colocado como o primeiro item da lista.

## 4. Como adicionar uma string?

Para adicionar uma string, colocamos o texto entre aspas e usamos `add()`.

Exemplo:

```dart
minhaLista.add('Dart');
```

## 5. Qual é o tamanho da lista após adicionar um elemento?

O tamanho da lista aumenta em 1. Se a lista estava vazia, depois de adicionar um elemento ela fica com tamanho 1.
