import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/model/categoria_controller.dart';
import 'package:flutter_modular_example/app/categoria/categoria_page.dart';
import 'package:flutter_modular_example/app/categoria/model/preco_model.dart';

class CategoriaModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.lazySingleton((i) => PrecoModel()),
        Bind.lazySingleton(
          (i) => CategoriaController(
            precoModel: i(),
          ),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => CategoriaPage(
            categoria: args.data,
          ),
        )
      ];
}
