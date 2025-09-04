import 'package:flutter/material.dart';

class ProdutoPage extends StatelessWidget {
  final String? name;
  const ProdutoPage({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produto'),
      ),
      body: Column(
        children: [
          Text(name ?? 'Name not found'),
        ],
      ),
    );
  }
}
