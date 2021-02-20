import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      height: 230,
      child: Image(
        image: NetworkImage(
          'https://www.landuum.com/wp-content/uploads/2019/03/cultura_paisajeiluminado_landuum5.jpg',
        ),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
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
    );
  }

  Widget _crearAcciones() {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _accion(Icons.call, 'Call'),
          _accion(Icons.near_me, 'Route'),
          _accion(Icons.share, 'Share'),
        ],
      ),
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40,
        ),
        Text(
          texto,
          style: TextStyle(color: Colors.blue, fontSize: 15),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Text(
          'Enim elit duis quis est minim nulla incididunt dolore aliqua dolor ipsum. Fugiat in nulla nisi aliqua laborum commodo sint sint. Ex commodo nulla culpa dolore proident labore aliquip. Sint fugiat officia aliquip aliquip. Labore qui id nisi et incididunt. Consequat voluptate id irure fugiat velit qui irure excepteur enim do eiusmod veniam ea pariatur. Sit proident cupidatat aute dolor in ullamco adipisicing deserunt enim veniam non.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
