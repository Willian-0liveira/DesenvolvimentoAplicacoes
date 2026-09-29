import 'veiculo.dart';

class Carro extends Veiculo {
  int _quantidadePortas = 0;

  Carro(String placa, String modelo, double valorDiaria, int quantidadePortas) :super(placa,modelo,valorDiaria){
    this.quantidadePortas = quantidadePortas;
  }

  int get quantidadePortas{
    return _quantidadePortas;
  }

  set quantidadePortas(int quantidadePortas){
    if(quantidadePortas < 0 ){
      throw ArgumentError("Numero de portas Invalidas");
    }
    _quantidadePortas = quantidadePortas;
  }
  @override
  String exibirInformacoes(){
    return "🚘\n Placa : $placa , Modelo: $modelo , Valor da Diaria: $valorDiaria, Quantidade de Portas: $quantidadePortas";
  }
}
  