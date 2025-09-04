import 'package:flutter/material.dart';

class ProdutoPage2 extends StatelessWidget {
  final String? name;

  const ProdutoPage2({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produto 2'),
      ),
      body: Column(
        children: [
          Text(name ?? 'Name not found'),
        ],
      ),
    );
  }
}
