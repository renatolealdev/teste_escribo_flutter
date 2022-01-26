import 'check_module_3And5.dart';

//Função que fará a contagem de todos os números antecessores ao número
//escolhido pelo usuário e armazenará cada um em um item de uma List
predecessorsInt({numberChecked = 0}) {
  //Declaração da List de inteiros que armazanará a contagem
  List<int> onlyPredecessors = [];

  //Estrutura de controle for, que faz a contagem enquanto a 'var i' for menor
  //que o número digitado e realiza a inclusão na List
  for (var i = 0; i < numberChecked; i++) {
    if (i != 0) {
      onlyPredecessors.add(i);
    }
  }
  //Retorno da função como chamada da próxima função e informando a List
  //como parâmetro nomeado
  return checkModule3And5(checkPredecessor: onlyPredecessors);
}
