import 'package:progetto2/future_service.dart';
import 'package:progetto2/progetto2.dart' as progetto2;

// void main(List<String> arguments) async {
//   Future<int> r = Future.delayed(Duration(milliseconds: 2000), (){return 2;});

//   r.then((value)=>null);
// }

 Future<int> doSomething(int duration) async{
   return Future.delayed(Duration(milliseconds: duration), () {
     print("Duration is: $duration");
     return 2;
   });
 }

void main (List<String>arguments) async{
  // int res = await doSomething();

  // int res1 = await doSomething();
  // int res2 = await doSomething();
  // int res3 = await doSomething();
  // int res4 = await doSomething();

  
  
  List<int> data = await Future.wait<int>(
    [FutureService.doSomething(5000),
    FutureService.doSomething(1000),
    FutureService.doSomething(3000)]);
  print (data);
}

