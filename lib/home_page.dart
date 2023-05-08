import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageStatefulWidget();
  }
}

class _HomePageStatefulWidget extends State<HomePage> {
  String texto = 'Estou no StatefulWidget';

  @override
  void initState() {
    super.initState();
    texto = 'Texto alterado pelo initState';
  }

  @override
  Widget build(BuildContext context) {
    print('Buildando com StatefulWidget');
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Text(texto),
        TextButton(
            onPressed: () {
              setState(() {
                texto = 'Alterei o texto utilizando StatefulWidget';
              });
            },
            child: Text('Alterei o texto do StatefulWidget'))
      ]),
    );
  }
}
