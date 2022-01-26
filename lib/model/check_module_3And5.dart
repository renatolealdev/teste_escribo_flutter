import 'sum_of_checked.dart';

//Função responsável por checar quais números são divisíveis por 3 ou 5
//e inclusão desses selecionados em uma List de inteiros para soma
checkModule3And5({List<int>? checkPredecessor}) {
  //Declaração da List
  List<int> numbersToSum = [];
  //Função 'for in' que percorre todos os itens da List vinda da Função anterior
  //e verifica quais números são divisíveis por 3 ou 5 e, a cada item válido
  //realiza a adição da List para soma final
  for (var item in checkPredecessor!) {
    if (item % 3 == 0 || item % 5 == 0) {
      numbersToSum.add(item);
    }
  }
  //Retorno da função como chamada da próxima função informando o resultado
  //como parâmetro nomeado
  return sumOfChecked(onlyCheckedModules: numbersToSum);
}
