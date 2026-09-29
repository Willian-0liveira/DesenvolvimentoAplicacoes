import 'package:meu_app/veiculo.dart';

class Moto extends Veiculo{
  int cilindradas = 0;

  Moto(String placa, String modelo, double valorDiaria, int cilindradas) :super(placa,modelo,valorDiaria){
    this.cilindradas = cilindradas;
  }
  
}