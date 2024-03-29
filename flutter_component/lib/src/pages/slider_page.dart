import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {


  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen()
            ),
          ],
        ),
      )
    );
  }


  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
    //  divisions: 20,
       value: _valorSlider,
       min: 10.0,
       max: 400.0,
       onChanged: (_bloquearCheck) ? null : (valor) {
          setState(() {
            _valorSlider = valor; 
          });
       },
    );
  }

  Widget _crearSwitch() {
     return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
           _bloquearCheck = valor;
        });      
      },
    );
  }

  Widget _checkBox() {
  /*  return Checkbox(
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
           _bloquearCheck = valor;
        });      
      },
    ); */

    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
           _bloquearCheck = valor;
        });      
      },
    );
  }

  Widget _crearImagen() {
      return FadeInImage(
        image: NetworkImage("https://mott.pe/noticias/wp-content/uploads/2019/03/los-50-paisajes-maravillosos-del-mundo-para-tomar-fotos.jpg"),
        width: _valorSlider,
        fit: BoxFit.contain,
        placeholder: AssetImage('assets/jar-loading.gif'),
        fadeInDuration: Duration(milliseconds: 200),
      );
  }
}