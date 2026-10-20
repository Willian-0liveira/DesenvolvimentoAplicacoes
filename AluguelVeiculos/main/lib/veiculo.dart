abstract class Veiculo {
  String _marca = "";
  String _modelo = "";
  double _valorDiaria = 0;
  int _quantidade = 0;
  int _quantidadeDias = 0;

  Veiculo (String marca, String modelo, double valorDiaria, int quantidade, int quantidadeDias){
    this.marca = marca;
    this.modelo = modelo;
    this.valorDiaria = valorDiaria;
    this.quantidade = quantidade;
    this.quantidadeDias = quantidadeDias;
  }

  String get marca{
    return _marca;
  }

  String get modelo{
    return _modelo;
  }

  double get valorDiaria{
    return _valorDiaria;
  }
  int get quantidade{
    return _quantidade;
  }
  int get quantidadeDias{
    return _quantidadeDias;
  }
  set marca(String novaMarca){
    if(novaMarca.trim().isEmpty){
      throw(ArgumentError("marca"));
    }
    _marca = novaMarca;
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
  set quantidade(int novoQuantidade){
    if(novoQuantidade < 0 ){
      throw ArgumentError("Valor Inválido");
    }
    _quantidade = novoQuantidade;
  }
  set quantidadeDias(int novoQuantidadeDias){
    _quantidadeDias = novoQuantidadeDias;
  }
  String exibirInformacoes(){
    return "Placa : $marca , Modelo: $modelo , Valor da Diaria: $valorDiaria,Quantidade: $quantidade, Quantidade de Dias: $quantidadeDias";
  }

  double alugar(int dias){
    if(quantidadeDias < 0 || quantidade < 0 || dias < 0){
      throw ArgumentError("Valor Inválido");
    } 
    _quantidade -= dias;
    double valorTotal = valorDiaria * quantidadeDias;
    return valorTotal;
  }
}