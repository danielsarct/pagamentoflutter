import 'package:flutter/material.dart';

class ReciboPage extends StatefulWidget {
  const ReciboPage({Key? key}) : super(key: key);

  @override
  _ReciboPageState createState() => _ReciboPageState();
}

class _ReciboPageState extends State<ReciboPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comprovante"),
      ),

      body: GridView.count(

        crossAxisCount: 2,
        children: List.generate(1, (index) {
          return Center(
            child: Text(
              'Valor Pago 74,55 \n'
                  'Data : 02/06/2021\n'
                  'Pagador : Fulano\n'
                  'Agencia: 001\n'
                  'C/C: 57079839-1\n'
                  'BANCO XXX',
              style: Theme.of(context).textTheme.headline,
              
            ),
          );
        }),
      ),
    );

  }
}
