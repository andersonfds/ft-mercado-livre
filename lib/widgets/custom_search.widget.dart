import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class CustomSearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(16.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextFormField(
          enableInteractiveSelection: false,
          cursorWidth: 1.0,
          readOnly: true,
          autofocus: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            isDense: true,
            hintText: 'Buscar no Mercado Livre',
            prefixIconConstraints: BoxConstraints(
              minWidth: 24.0,
            ),
            prefixIcon: Icon(
              Feather.search,
              size: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
