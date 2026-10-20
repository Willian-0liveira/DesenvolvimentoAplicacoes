import 'veiculo.dart';

class Carro extends Veiculo {
  int _quantidadePortas = 0;

  Carro(String placa, String modelo, double valorDiaria, int quantidadePortas, int quantidade, int quantidadeDias) :super(placa,modelo,valorDiaria,quantidade,quantidadeDias){
    this.quantidadePortas = quantidadePortas;
  }

  int get quantidadePortas{
    return _quantidadePortas;
  }

  set quantidadePortas(int novaQuantidadePortas){
    if(novaQuantidadePortas <= 0 || novaQuantidadePortas >= 5  ){
      throw ArgumentError("Numero de portas Invalidas");
    }
    _quantidadePortas = novaQuantidadePortas;
  }
  @override
  String exibirInformacoes(){
    return "🚘 Placa : $marca , Modelo: $modelo , Valor da Diaria: $valorDiaria, Quantidade de Portas: $quantidadePortas, Quantidade: $quantidade, Quantidade de Dias: $quantidadeDias";
  }
}
  