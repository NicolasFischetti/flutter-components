import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0)
        ],
      )
    );
  }

  Widget _cardTipo1() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            title: Text("Soy el titutlo de esta tarjeta"),
            subtitle: Text("Este es un ejemplo de como armar una tarjeta en flutter con una descipción medianamente grande"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text("Cancelar"),
                onPressed: () {

                },
              )
            ],
          )
        ],
      ),
    );
  }

  _cardTipo2() {
    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[

          FadeInImage(
            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd9lbw_09C6Ynptlb-j64PvbvZoc65CDpQaPL78QZRS9QO43eHIg"),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),

        /*  Image(
            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd9lbw_09C6Ynptlb-j64PvbvZoc65CDpQaPL78QZRS9QO43eHIg"),
          ), */
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text("No tengo idea de que poner")
          )
        ],
      )
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      )
    );
  }
}