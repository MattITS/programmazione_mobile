import 'package:progetto2/quote_service.dart';

void main (List<String>arguments) async{
  QuoteService().getQuote();
  QuoteService().getQuoteByName("Sauron");

}
