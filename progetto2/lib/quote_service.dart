import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart'as http;
import 'package:path/path.dart' as path;
 
class QuoteService {
 
void getQuote()async{
  
  String keypath = path.join(Directory.current.path, 'assets', 'key_authorization.txt');
  
  var key = await File(keypath).readAsString();
  
  final url = Uri.parse('https://the-one-api.dev/v2/quote');
  final res = await http.get(url, headers: {
    HttpHeaders.authorizationHeader: 'Bearer $key'
  });
  final data = jsonDecode(res.body) as Map<String, dynamic>;
  print (data['docs'][150]['dialog']);
}



void getQuoteByName(String name)async{
  
  String keypath = path.join(Directory.current.path, 'assets', 'key_authorization.txt');
  
  var key = await File(keypath).readAsString();
  
  final url = Uri.parse('https://the-one-api.dev/v2/quote?sort=character?name=$name');
  final res = await http.get(url, headers: {
    HttpHeaders.authorizationHeader: 'Bearer $key'
  });
  final data = jsonDecode(res.body) as Map<String, dynamic>;
  print (data['docs'][1]['dialog']);
}



}