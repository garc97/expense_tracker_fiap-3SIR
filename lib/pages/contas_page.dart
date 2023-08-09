import 'package:expense_tracker/models/banco.dart';
import 'package:expense_tracker/repository/contas_repository.dart';
import 'package:flutter/material.dart';

class ContasPage extends StatefulWidget {
  const ContasPage({super.key});

  @override
  State<ContasPage> createState() => _ContasPageState();
}

class _ContasPageState extends State<ContasPage> {
  final contas = ContasRepository().listarConta();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contas'),
        ),
        body: ListView.separated(
          itemCount: contas.length,
          itemBuilder: (context, index) {
            final conta = contas[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    AssetImage("images/" + bancosMap[conta.bancoId]!.logo),
              ),
              title: Text(conta.descricao),
              subtitle: Text(conta.tipoConta.name),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
        ));
  }
}
