import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:global_state_management_counter_app/AddRemoveEdit/ListFile.dart';
import 'package:provider/provider.dart';

import '../providerHelper/mapProvider.dart';

class Addlist extends StatelessWidget {
  const Addlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add List"),
      leading: IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Listfile(),));

      }, icon: Icon(CupertinoIcons.back)),
      ),

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              child: Icon(CupertinoIcons.add),
              onPressed: () {
                context.read<MapProvider>().addData({
                  "Name": "Muhammad Umar",
                  "Contact#": "0300-1234567",
                });
              },),
          ],
        ),
      ),
    );
  }
}
