import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _pagina1(),
          _pagina2(),
        ],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: [
        _colorDeFondo(),
        _imagenDeFondo(),
        _textos(),
      ],
    );
  }

  Widget _pagina2() {
    return Container(
      color: Color.fromRGBO(0, 100, 50, 0.5),
      child: Center(
          child: RaisedButton(
        onPressed: () {},
        shape: StadiumBorder(),
        color: Colors.greenAccent,
        textColor: Colors.black,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              'Bienvenido',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
        elevation: 30,
      )),
    );
  }

  Widget _colorDeFondo() {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Image(
          image: AssetImage('assets/scroll-1.jpg'),
          fit: BoxFit.cover,
        ));
  }

  Widget _imagenDeFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(0, 100, 50, 0.5),
    );
  }

  Widget _textos() {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50);

    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 40),
          Text('11°', style: estiloTexto),
          Text('Miércoles', style: estiloTexto),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70, color: Colors.white)
        ],
      ),
    );
  }
}
