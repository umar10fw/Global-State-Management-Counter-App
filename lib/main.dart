import 'package:flutter/material.dart';
import 'package:global_state_management_counter_app/providerHelper/countProvider.dart';
import 'package:global_state_management_counter_app/providerHelper/mapProvider.dart';
import 'package:provider/provider.dart';

import 'AddRemoveEdit/addList.dart';

void main() {
  runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider(),),
        ChangeNotifierProvider(create: (context) => MapProvider(),),
      ],
        child: MyApp(),
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Addlist(),
    );
  }
}

