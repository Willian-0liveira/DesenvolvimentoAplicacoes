import '../lib/conexao.dart';
import 'dart:io';

main() async{
  final supabase = conexao();

  try{
    print("Digite um id de um Produto que deseja excluir");
    final id = int.parse(stdin.readLineSync()!);

    final produto = await supabase
    .from("produtos")
    .delete()
    .eq("id", id)
    .select()
    .single();

    print(produto);
    print("Produto excluido com Sucesso");

  }catch(erro){
    print(erro);
  }finally{
    await supabase.dispose();
  }
}