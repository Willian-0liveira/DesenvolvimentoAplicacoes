import 'package:meu_app/veiculo.dart';

class Moto extends Veiculo{
  int _cilindradas = 0;

  Moto(String placa, String modelo, double valorDiaria, int cilindradas) :super(placa,modelo,valorDiaria){
    this.cilindradas = cilindradas;
  }

  int get cilindradas{
    return _cilindradas;
  }
  set cilindradas(int novaCilindrada){
    if(novaCilindrada < 0 ){
      throw ArgumentError("Cilindrada invalida");
    }
    _cilindradas = novaCilindrada;
  }

  @override
  String exibirInformacoes(){
    return "🏍️: Placa : $placa , Modelo: $modelo , Valor da Diaria: $valorDiaria, Cilindradas: $cilindradas";
  }
}