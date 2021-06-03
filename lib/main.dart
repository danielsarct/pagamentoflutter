import 'package:boleto/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting('pt_BR', null);
  runApp(
    MaterialApp(
      title: 'Teste Pagamento Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    ),
  );
}
