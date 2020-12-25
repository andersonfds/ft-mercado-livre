import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:mercado_livre/widgets/widgets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: kToolbarHeight,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    icon: Icon(Ionicons.ios_menu),
                    splashRadius: 20.0,
                  ),
                  Expanded(child: CustomSearchWidget()),
                  IconButton(
                    onPressed: () => null,
                    icon: Icon(Ionicons.md_cart),
                    splashRadius: 20.0,
                  ),
                ],
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => null,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Icon(
                        Feather.map_pin,
                        size: 16.0,
                      ),
                    ),
                    Expanded(
                        child: Text('Enviar para Anderson Freitas - Rua XXX')),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Icon(
                        Icons.chevron_right,
                        size: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 40);
}
