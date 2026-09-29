abstract class Veiculo {
  String _placa = "";
  String _modelo = "";
  double _valorDiaria = 0;

  Veiculo (String placa, String modelo, double valorDiaria){
    this.placa = placa;
    this.modelo = modelo;
    this.valorDiaria = valorDiaria;
  }

  String get placa{
    return _placa;
  }

  String get modelo{
    return _modelo;
  }

  double get valorDiaria{
    return _valorDiaria;
  }
  
  set placa(String novaPlaca){
    if(novaPlaca.trim().isEmpty){
      throw(ArgumentError("Placa Inválida "));
    }
    _placa = novaPlaca;
  }

  set modelo(String novoModelo){
    if(novoModelo.trim().isEmpty){
      throw(ArgumentError("Modelo Inválido"));
    }
    _modelo = novoModelo;
  }
  set valorDiaria(double novoValorDiaria){
    if(novoValorDiaria < 0 ){
      throw ArgumentError("Valor Inválido");
    }
    _valorDiaria = novoValorDiaria;
    novoValorDiaria.toStringAsFixed(2);
  }
  String exibirInformacoes(){
    return "Placa : $placa , Modelo: $modelo , Valor da Diaria: $valorDiaria";
  }
}