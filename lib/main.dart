import 'package:flutter/material.dart';
import 'package:new_video/HomeScreen.dart';

void main(){
  runApp( const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title:'flutter video',
         theme: ThemeData(
            primarySwatch: Colors.deepPurple
         ),
        home:const HomeScreen()
    );
  }
}