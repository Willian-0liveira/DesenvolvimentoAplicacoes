import 'package:supabase/supabase.dart';
import 'package:dotenv/dotenv.dart';

// funcao conexao entre o dart e o supabase
SupabaseClient conexao(){
  final env = DotEnv()..load();
  final url = env['SUPABASE_URL'] ?? '';
  final chave = env['SUPABASE_PUBLISHABLE_KEY'] ?? '';

  if(url.isEmpty || chave.isEmpty){
    throw StateError("Preencha a URL e chave");
  }

  return SupabaseClient(url, chave);
}