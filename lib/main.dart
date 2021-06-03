import 'package:boleto/boleto.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Pagamentos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),

      body: Center(
        child: Container(
          height: 100,
          width: 100,
          child: RaisedButton(onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => BoletoPage())
            );
            },
              color: Colors.greenAccent,
            child:Text("Pagar Boleto")
          ),
        )

      ),
    );

  }
}
