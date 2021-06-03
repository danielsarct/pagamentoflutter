import 'package:boleto/models/pagamento_model.dart';

class PagamentoController {
  late PagamentoModel pagamentoModel;
  PagamentoController() {
    this.pagamentoModel = PagamentoModel(
      valor: 74.55,
      codigo: '35214981365198162519816219816521',
      saldo: 100.0,
      dtAgendamento: DateTime.now(),
    );
  }
}
