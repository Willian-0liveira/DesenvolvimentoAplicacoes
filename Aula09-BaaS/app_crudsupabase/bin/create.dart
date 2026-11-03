//registrar informacoes no banco de dados
import '../lib/conexao.dart';

main() async {
  //conexao
  final supabase = conexao();
  try{
    final produto = await supabase
    .from('produtos')
    .insert({
      'nome' : 'Computador',
      'preco': 150,
      'quantidade' : 10
    })
    .select()
    .single();
    
    print(produto);
  } catch(erro){
    print("Ocorreu o seguinte erron $erro");
  } finally{
    //encerra a conexao
    await supabase.dispose();
  }
}