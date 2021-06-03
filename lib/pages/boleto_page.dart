import 'package:boleto/controllers/pagamento_controller.dart';
import 'package:boleto/pages/recibo_page.dart';
import 'package:boleto/utils/string_utils.dart';
import 'package:boleto/widgets/custom_item_label.dart';
import 'package:boleto/widgets/custom_textfield_date.dart';
import 'package:flutter/material.dart';

class BoletoPage extends StatefulWidget {
  const BoletoPage({Key? key}) : super(key: key);

  @override
  _BoletoPageState createState() => _BoletoPageState();
}

class _BoletoPageState extends State<BoletoPage> {
  final controller = PagamentoController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Boletos"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomLabel(
                  label: 'Voce esta pagagando',
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: CustomLabel(
                    label: StringUtils.formatToMoney(
                      controller.pagamentoModel.valor,
                    ),
                    style: Theme.of(context).textTheme.headline4,
                    textAlign: TextAlign.center,
                  ),
                ),
                CustomLabel(
                  label: 'CÓDIGO:',
                  value: controller.pagamentoModel.codigo,
                ),
                CustomLabel(
                  label: 'Saldo disponivel atual:',
                  value: StringUtils.formatToMoney(
                    controller.pagamentoModel.saldo,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                CustomTextFieldDate(),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          ReciboPage(model: controller.pagamentoModel)),
                );
              },
              child: Text("Pagar"),
            ),
          ],
        ),
      ),
    );
  }
}
