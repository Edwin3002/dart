// void main(List<String> args) {
//   print("start");
//   httpGet2("url.com")
//       .then((value) => print(value))
//       .catchError((onError) => print("Error en ${onError}"));
// }

void main(List<String> args) async {
  print("start");
  try {
    final res = await httpGet2("ur");
    print(res);
  } on Exception catch (err) {
    //capturar las exceptions o errs especificos
    print("Tenemos una Exception = ${err}");
  } catch (e) {
    print(e);
  } finally {
    print("end");
  }
  print("end2");

  final res = emitNumbers().listen((value) {
    print("Este valor $value");
  });
  print("val $res");

  emitNumber().listen((int value) {
    print('Stream value: $value');
  });
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    return "Res http ${url}";
  });
}

Future<String> httpGet2(String url) async {
  //async siempre retorna un future
  await Future.delayed(const Duration(seconds: 1));
  if (url.length < 3) throw new Exception("URL no valida hay parametros");
  // throw "error RES";
  return "Res http2 ${url}";
}

//Stream
Stream<int> emitNumbers() {
  return Stream.periodic(Duration(milliseconds: 1500), (value) {
    return value;
  }).take(5);
}

Stream<int> emitNumber() async* { // el async* especifica q retorna un stream
  final valuesToEmit = [1, 2, 3, 4, 5];
  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
