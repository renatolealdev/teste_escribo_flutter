import '../model/predecessors_int.dart';

/*
Obs: Esta função é responsável por impedir que o algoritmo prossiga, evitando 
que chegue até a camada Model. Somente prosseguirá se todos os requisitos 
forem cumpridos, conforme segue:
*/

//Função que verifica se somente números inteiros foram inseridos
receiveNumberAndCheck({String numInfo = ""}) {
  //Converte o número informado em list de Strings
  List<String> convertStringToList = numInfo.split("");
  //Declaração da list que receberá a validação de num Int ou Null
  List<dynamic> listTryParse = [];
  //Declaração da lista que receberá somente os nums Ints
  String numberOnlyInt = "";
  //Conversão de num(int) em Int e qualquer elemento != de Int em Null
  for (var item in convertStringToList) {
    listTryParse.add(int.tryParse(item)); //Armazenando os elementos na lista
  }

  for (var items in listTryParse) {
    if (items == null) {
      return print(
          "\n\n  *** NÚMERO INVÁLIDO ***\n  → Reinicie o algoritmo ← \n\n\n");
    } else {
      numberOnlyInt = listTryParse.join();
    }
  }
  return predecessorsInt(numberChecked: int.parse(numberOnlyInt));
}
