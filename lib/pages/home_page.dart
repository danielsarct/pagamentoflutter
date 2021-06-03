import 'package:flutter/material.dart';

import 'boleto_page.dart';

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({this.title = 'Bem Vindo'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Icon(Icons.view_week_rounded),
                      Text('Pagar Boleto'),
                    ],
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BoletoPage()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
