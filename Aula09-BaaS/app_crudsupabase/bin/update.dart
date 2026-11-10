import '../lib/conexao.dart';
import 'dart:io';

main() async{
  final supabase = conexao();

  try{
    print("Digite o Produto que deseja altera: ");
    final id = int.parse(stdin.readLineSync()!);

    print("Digite o novo nome Produto que deseja altera: ");
    final nome = stdin.readLineSync()!;

    print("Digite o novo preco Produto que deseja altera: ");
    final preco = double.parse(stdin.readLineSync()!);

    print("Digite a nova quantidade do Produto que deseja altera: ");
    final quantidade = int.parse(stdin.readLineSync()!);

    final produto = await supabase
    //infromar a tabela
    .from("produtos")
    //metodo para atualizar
    .update({
      "nome" : nome,
      "preco" : preco,
      "quantidade" : quantidade
    })
    //identificador
    .eq("id", id)
    //retornar os valores atualizados
    .select()
    .single();

    print(produto);
    print("Atualização feita com Sucesso");
    
  }catch(erro){
    print(erro);
  }finally{
    await supabase.dispose();
  }
}