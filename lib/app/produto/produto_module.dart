import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/produto/produto_page.dart';
import 'package:flutter_modular_example/app/produto/produto_page2.dart';

class ProdutoModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/:name/xyz', // tipo obrigatorio
          child: (context, args) => ProdutoPage(
            name: args.params['name'],
          ),
        ),
        ChildRoute(
          '/xyz', // tipo opcional
          child: (context, args) => ProdutoPage(
            name: args.queryParams['name'],
          ),
        ),
      ];
}
