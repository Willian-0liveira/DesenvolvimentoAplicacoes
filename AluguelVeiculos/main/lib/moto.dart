import 'veiculo.dart';

class Moto extends Veiculo{
  int _cilindradas = 0;

  Moto(String marca, String modelo, double valorDiaria, int quantidade,int quantidadeDias, int cilindradas) 
  :super(marca,modelo,valorDiaria,quantidade,quantidadeDias){
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
    return "🏍️: Placa : $marca , Modelo: $modelo , Valor da Diaria: $valorDiaria, Cilindradas: $cilindradas, Quantidade: $quantidade, Quantidade de Dias: $quantidadeDias";
  }
}