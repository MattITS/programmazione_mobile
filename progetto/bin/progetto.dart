import 'dart:io';
import 'package:progetto/fibonacci.dart' as fibonacci;
import 'package:http/http.dart' as http;

void main(List<String> args) {
  
  final fibonacci.Fibonacci f = fibonacci.Fibonacci(count: 8);
    print ({f.calc()});
}


void geQuote()async{
  final url = Uri.parse('https://the-one-api.dev/v2/quote');
  final res = await http.get(url, headers: {
    HttpHeaders.authorizationHeader: 'Bearer WNm2vMOsQHrHxe38I20y '
  });
  final data = jsonCode(res.body) as Map<String, dynamic>;
  print (data['docs'][42]['dialog']);
}





  
