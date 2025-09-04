import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/categoria');
                // Argumentos: recupera pelo Modular.args.data
                Modular.to.pushNamed('/categoria', arguments: 'Categoria Selecionada @@@@@');
              },
              child: Text('Categoria Module'),
            ),
            TextButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/categoria');
                // NamedParameters: recupera pelo Modular.args.params
                Modular.to.pushNamed('/produto/Produto_X/xyz');
              },
              child: Text('Produto Module'),
            ),
            TextButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/categoria');
                // QueryParameters: recupera pelo Modular.args.queryParams
                Modular.to.pushNamed('/produto/xyz?name=produtoX');
              },
              child: Text('Produto 2 Module'),
            ),
          ],
        ),
      ),
    );
  }
}
