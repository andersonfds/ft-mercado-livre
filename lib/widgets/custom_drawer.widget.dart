import 'package:flutter/material.dart';

class CustomDrawerWidget extends StatelessWidget {
  Widget _mercadoPago() {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Material(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(16.0),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () => null,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              children: [
                //Logo mercado pago
                //Icon(Icons.branding_watermark),
                Expanded(child: Text('Mercado Pago')),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _drawerHeader(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      width: double.infinity,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Olá, Anderson',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'Nível 5 - Mercado Pontos',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(Icons.chevron_right),
                ],
              ),
              _mercadoPago(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _drawerHeader(context),
        ],
      ),
    );
  }
}
