import 'dart:developer';

import 'package:flutter_modular_example/app/categoria/model/preco_model.dart';

class CategoriaController {
  PrecoModel precoModel;
  CategoriaController({required this.precoModel}) {
    log('Categoria Controller $hashCode');
  }
}
