import 'package:f_currency_converter_template/utils/constants.dart';
import 'package:flutter/material.dart';
import 'one_key.dart';

// en este widget mostramos el keypad y los valores de las monedas
class KeyPad extends StatefulWidget {
  const KeyPad(
      {Key? key,
      required this.textCurrency1,
      required this.textCurrency2,
      required this.rate})
      : super(key: key);

  // estos tres valores son recibidos de converter_page
  final String textCurrency1;
  final String textCurrency2;
  final double rate;

  @override
  State<KeyPad> createState() => _KeyPadState();
}

class _KeyPadState extends State<KeyPad> {
  // valor de la moneda convertida
  double _currency2 = 0;
  // el valor de la moneda que es introducida en el keypad
  int _currency1 = 0;

  // función que cambia el estado del widget (_currency1, _currency2)
  void _onPressed(int k) {
    setState(() {
      if (k == 10) {
        // Omar Yecid
        // TODO
        // cuando k es 10 se debe volver el estado a cero

      } else {
        // TODO
        // _currency1 debe cambiar con el keypad
        // _currency2 debe cambiar de acuerdo con _currency1 y la tasa de cambio

      }
    });
  }

  @override
  void didUpdateWidget(covariant oldWidget) {
    super.didUpdateWidget(oldWidget);
    // aquí garantizamos que cuando el widget refresca el estado va a cero
    _currency2 = 0;
    _currency1 = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.textCurrency1),
              ),
              Expanded(
                child: Container(),
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.centerRight,
                  child: Text(
                    _currency1.toString(),
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 35),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.textCurrency2),
              ),
              Expanded(
                child: Container(),
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.centerRight,
                  child: Text(
                    num.parse(_currency2.toStringAsFixed(4)).toString(),
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 35),
                  ))
            ],
          ),
          Expanded(
            // Jose
            flex: 1,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  // TODO en cada OneKey se manda el número y _onPressed para callback
                  OneKey(number: 7, callback: _onPressed),
                  OneKey(number: 8, callback: _onPressed),
                  OneKey(number: 9, callback: _onPressed),
                ]),
          ),
          Expanded(
            flex: 1,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  // TODO cada OneKey se manda el número y _onPressed para callback
                  OneKey(number: 4, callback: _onPressed),
                  OneKey(number: 5, callback: _onPressed),
                  OneKey(number: 6, callback: _onPressed),
                ]),
          ),
          Expanded(
            flex: 1,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  // TODO en cada OneKey se manda el número y _onPressed para callback
                  OneKey(number: 1, callback: _onPressed),
                  OneKey(number: 2, callback: _onPressed),
                  OneKey(number: 3, callback: _onPressed),
                ]),
          ),
          Expanded(
            flex: 1,
            child: Row(children: <Widget>[
              OneKey(number: 10, callback: _onPressed),

              // TODO
              // en cada OneKey se manda el número y _onPressed para callback
              OneKey(number: 0, callback: _onPressed),
            ]),
          )
        ]);
  }
}
