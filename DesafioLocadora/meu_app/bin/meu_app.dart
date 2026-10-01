import 'package:interact/interact.dart';
import 'package:meu_app/carro.dart';
import 'package:meu_app/moto.dart';
import 'package:meu_app/veiculo.dart';
import 'dart:io';

void main() {
  List<Veiculo> veiculos = [];
  while(true){
  final options = ['Cadastrar Carro', 'Cadastrar Moto', 'Listar Veiculos', 'Editar Veiculo', 'Excluir Veiculo', 'Sair'];

  final index = Select(
    prompt: "Agencia de Carros Willians's",
    options: options,
  ).interact();

  print('Você escolheu: ${options[index]}');

  if(index == 0){
    Carro gol = Carro('qqooq-sss','Vectra',10.000,4);
    veiculos.add(gol);
    for(var veiculo in veiculos){
      print(veiculo.exibirInformacoes());
      Process.runSync('cls', [],runInShell: true);
    }
  }else if(index ==1) {
    Moto fazer = Moto('qqooq-sss','fazer',10.000,250);
    veiculos.add(fazer);
    for(var veiculo in veiculos){
      print(veiculo.exibirInformacoes());
    }
  }else if (index == 2){
      for(var veiculo in veiculos){
      print(veiculo.exibirInformacoes());
    }
  }
  }}
