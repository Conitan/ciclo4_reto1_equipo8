import 'package:flutter/material.dart';

class OneKey extends StatelessWidget {
  const OneKey({Key? key, required this.number, required this.callback})
      : super(key: key);

  final int number;
  final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    String value;
    number == 10 ? value = 'Reset' : value = number.toString();
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
        child: MaterialButton(
            key: Key(value.toString()),
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            onPressed: () {
              callback(number);
            },
            child: Text(value.toString(),
                style: const TextStyle(
                  fontSize: 26.0,
                  color: Colors.white,
                ))),
      ),
    );
  }
}
