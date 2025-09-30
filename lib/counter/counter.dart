import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providerHelper/countProvider.dart';

class Count extends StatelessWidget {
  const Count({super.key});

  @override
  Widget build(BuildContext context) {
    print("main build Function");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        centerTitle: true,
      ),
      body: Center(
          child: Consumer(builder: (ctx, value, child) {
            print("ctx build Function");
            return Text(
                ctx.watch<CounterProvider>().getData().toString());
          },)
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
              child: IconButton(
                onPressed: () {
                  context.read<CounterProvider>().removeData();
                },
                icon: Icon(
                  Icons.remove,
                  color: Colors.pink,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
              onPressed: () {}),
          FloatingActionButton(
              child: IconButton(
                onPressed: () {
                  context.read<CounterProvider>().addData();
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.pink,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}
