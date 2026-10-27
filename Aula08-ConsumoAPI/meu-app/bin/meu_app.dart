import 'package:http/http.dart';

void main() {
  // requestData();
  requestDataAsync();
}

requestData(){
  String url = "https://gist.githubusercontent.com/Willian-0liveira/16e3858fcc10e602b0b70f4d11a15268/raw/5d2972c2b6c69d38d9437af785db0cc32d1a6b0d/filmes.json";
  
  Future<Response> filmes = get(Uri.parse(url));
  print(filmes);

  filmes.then((Response response){
    print(response.body);
  });
  
  print("Ultimo Código");
}


requestDataAsync() async{
  String url = "https://gist.githubusercontent.com/Willian-0liveira/16e3858fcc10e602b0b70f4d11a15268/raw/5d2972c2b6c69d38d9437af785db0cc32d1a6b0d/filmes.json";
 
  Response response = await get(Uri.parse(url));

  print(response.body);
  print("ultimo codigo");
}
