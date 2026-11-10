import '../lib/conexao.dart';
main() async {
  final supabase = conexao();

  try{
    final produtos = await supabase 
    //definir a tabela que iremos concultar
    .from("produtos")
    //consultar os dados
    .select("id,nome,preco,quantidade")
    //ordenacao pelo id
    .order('id');
    
    if (produtos.isEmpty){
      print("nenhum produto cadastrado");
      return;
    }
    for (final produto in produtos){
      print("ID: ${produto['id']}");
      print("Nome: ${produto['nome']}");
      print("Preço: R\$ ${produto['preco']}");
      print("Quantidade: ${produto['quantidade']}");
      final valorTotal = produto['preco'] * produto['quantidade'];
      print("Valor Total: R\$ ${valorTotal}");
    }
  }catch(erro){
    print(erro);
  }finally{
    await supabase.dispose();
  }

}
