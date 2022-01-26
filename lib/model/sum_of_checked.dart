import '../view/final_result.dart';

//Função que realiza a soma de todos os itens da List vinda da função anterior
sumOfChecked({List<int>? onlyCheckedModules}) {
  //Declaração da variável que armazenará os incrementos
  var sumTotal = 0;
  //Função 'for in' que percorre cada item da List, incrementando o valor desse
  //item à variável 'sumTotal'
  for (var elements in onlyCheckedModules!) {
    sumTotal += elements;
  }
  //Retorno da função como chamada da função final, que na camada view, irá
  //exibir o resultado no terminal
  return finalResult(result: sumTotal);
}
