class Fibonacci{
  int count;


  Fibonacci({
    required this.count,
  });
  List<int>calc(){

    int number = 0;
    List<int> fibo = [0];

    int _getNumber(n) {
      return n = fibo.last + fibo[fibo.length - 2];
    }

    for (int i = 1; i < count; i++) {
      fibo.add(i == 1 ? i : _getNumber(number));
    }

    return fibo;
  }
  
}

    