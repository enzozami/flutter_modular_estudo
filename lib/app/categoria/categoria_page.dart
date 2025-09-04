import 'package:flutter/material.dart';

class CategoriaPage extends StatefulWidget {
  final String? categoria;

  const CategoriaPage({super.key, this.categoria});
  // : categoria = Modular.args?.data;

  @override
  State<CategoriaPage> createState() => _CategoriaPageState();
}

class _CategoriaPageState extends State<CategoriaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categoria'),
      ),
      body: Center(
        child: Text(widget.categoria ?? 'Não foi enviado a categoria'),
      ),
    );
  }
}
