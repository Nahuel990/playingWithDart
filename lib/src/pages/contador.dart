import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State <ContadorPage>{
    final _estilo = new TextStyle(fontSize: 33);
  int _conteo = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hola cheto', style: _estilo),
            Text('$_conteo', style: _estilo,)
          ],
        )
      ),
      floatingActionButton:  _crearBotones()
    );
}

Widget _crearBotones(){
  
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
                  SizedBox(width: 30.0),

      FloatingActionButton(child: Icon(Icons.add), onPressed: _add,),
      Expanded(child: SizedBox()),
      FloatingActionButton(child: Icon(Icons.add_box), onPressed: _remove,),
            SizedBox(width: 30.0),

      FloatingActionButton(child: Icon(Icons.add_alarm), onPressed: _reset,)
    ],
  );
}

_add(){
  setState(()=>  _conteo++);
}
_remove(){
  setState(()=>  _conteo--);
}
_reset(){
  setState(()=>  _conteo = 0);
}
}