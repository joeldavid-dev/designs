import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
              image: NetworkImage(
                  'https://www.landuum.com/wp-content/uploads/2019/03/cultura_paisajeiluminado_landuum5.jpg')),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lago con aurora',
                        style: estiloTitulo,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Ubicacion: Islandia',
                        style: estiloSubtitulo,
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 30,
                ),
                Text(
                  '41',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
