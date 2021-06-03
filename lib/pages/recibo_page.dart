import 'package:boleto/models/pagamento_model.dart';
import 'package:boleto/utils/string_utils.dart';
import 'package:boleto/widgets/custom_item_label.dart';
import 'package:flutter/material.dart';

class ReciboPage extends StatelessWidget {
  final PagamentoModel model;
  ReciboPage({required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comprovante"),
        actions: [IconButton(icon: Icon(Icons.share), onPressed: () {})],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                CustomLabel(
                  label: 'Valor Pago:',
                  value: StringUtils.formatToMoney(
                    model.valor,
                  ),
                ),
                CustomLabel(
                  label: 'CÓDIGO:',
                  value: model.codigo,
                ),
                CustomLabel(
                  label: 'Data Pagamento:',
                  value: StringUtils.formatDateTime(model.dtAgendamento),
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text("Concluir"),
            ),
          ],
        ),
      ),
    );
  }
}
