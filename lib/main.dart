import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_task/shared/network/providers/providers.dart';

import 'layout/school_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider( create: (_) => SchoolViewModel())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'know our school',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SchoolInfo(),
      ),
    );
  }
}