import 'package:expense_tracker/models/conta.dart';

class ContasRepository {
  List<Conta> listarConta() {
    return [
      Conta(
        id: "1",
        bancoId: "bb",
        descricao: "Conta Pessoal",
        tipoConta: TipoConta.contaCorrente,
      ),
      Conta(
        id: "2",
        bancoId: "c6bank",
        descricao: "Conta Pessoal",
        tipoConta: TipoConta.contaInvestimento,
      ),
      Conta(
        id: "3",
        bancoId: "santander",
        descricao: "Conta Pessoal",
        tipoConta: TipoConta.contaCorrente,
      ),
    ];
  }
}
