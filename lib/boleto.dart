import 'package:boleto/recibo.dart';
import 'package:flutter/material.dart';

class BoletoPage extends StatefulWidget {
  const BoletoPage({Key? key}) : super(key: key);

  @override
  _BoletoPageState createState() => _BoletoPageState();
}

class _BoletoPageState extends State<BoletoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Boletos"),
      ),
      body: Container(
        child: Center(
            child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Voce esta pagagando \n'
                'RS 74,55 \n\n'
                    'CODIGO: 35214981365198162519816219816521 \n\n'
                'Saldo disponivel atual: RS 2.578,14',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),


              Divider(),
              TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 20),
                    isDense: true,
                    hintText: "02/06/2021",
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Icon(Icons.alarm),
                    )
                ),),


              Divider(),
              RaisedButton(
                color: Colors.greenAccent,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ReciboPage()));
                },
                child: Text("Pagar"),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
